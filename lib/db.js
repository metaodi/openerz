var Moment = require('moment');
var _ = require('underscore');
const { Pool } = require('pg');
var path = require('path');

if (process.env.NODE_ENV) {
    const dotenv_path = path.join(__dirname, `../.env.${process.env.NODE_ENV}`);
    require('dotenv').config({ path: dotenv_path, override: true});
} else {
    require('dotenv').config();
}

exports.station = station;
exports.calendar = calendar;
exports.area = area;

var ssl = {
    rejectUnauthorized: false
};
if ('DATABASE_URL' in process.env && process.env.DATABASE_URL.includes('localhost')) {
    ssl = false;
} 
const pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: ssl
});

// the pool with emit an error on behalf of any idle clients
// it contains if a backend error or network partition happens
pool.on('error', (err, client) => {
    console.error('Unexpected error on idle client', err); // your callback here
    process.exit(-1);
});

// eslint-disable-next-line max-lines-per-function, complexity
async function queryDatabase(pool, table, params, sort, limit, offset) {
    if ('station' === table) {
        sort = sort || 'region, name';
    } else if ('calendar' === table) {
        sort = sort || 'col_date desc';
    }
    limit = (typeof limit !== 'undefined') ? limit : 500;
    offset = offset || 0;

    var queryObj = buildQuery(table, params, sort, limit, offset);
    const {query, countQuery, queryParams} = queryObj;
    return runQueries(query, countQuery, queryParams);
}

async function runQueries(query, countQuery, queryParams) {
    var client;
    try {
        client = await pool.connect();
        console.log(`Running query '${query}'`);
        console.log(queryParams);
        const dbres = await client.query(query, queryParams);

        console.log(`Running query '${countQuery}'`);
        console.log(queryParams);
        const countRes = await client.query(countQuery, queryParams);
        
        return {
            ok: true,
            total_count: parseInt(countRes.rows[0]['total_count']),
            row_count: dbres.rowCount,
            result: dbres.rows
        };
    } catch (err) {
        console.error(err.stack);
        return {
            ok: false,
            message: err
        };
    } finally {
        client.release();
    }
}

function buildQuery(table, params, sort, limit, offset) {
    var query = `SELECT * FROM ${table} WHERE 1 = 1`;
    var countQuery = `SELECT COUNT(1) AS total_count FROM ${table} WHERE 1 = 1`;
    var queryParams = [];

    params.forEach((p) => {
        query = `${query} AND ${p.sql}`;
        countQuery = `${countQuery} AND ${p.sql}`;
        queryParams.push(p.param);
    });

    query = `${query} ORDER BY ${sort}`;
    query = `${query} LIMIT ${limit}`;
    query = `${query} OFFSET ${offset}`;

    return {
        'query': query,
        'countQuery': countQuery,
        'queryParams': queryParams
    };
}

async function calendar(params, sort, limit, offset) {
    return result('calendar', params, sort, limit, offset);
}

async function station(params, sort, limit, offset) {
    return result('station', params, sort, limit, offset);
}

async function area(params, sort, limit, offset) {
    var dbParams = [];
    dbParams = setParam(dbParams, params, 'region', 'region');

    var query = 'SELECT region, area FROM calendar WHERE 1 = 1';
    query = `${query} AND area <> ''`;
    var queryParams = [];
    dbParams.forEach((p) => {
        query = `${query} AND ${p.sql}`;
        queryParams.push(p.param);
    });

    query = `${query} GROUP BY region, area ORDER BY region, area`;
    var countQuery = `SELECT COUNT(*) AS total_count FROM (${query}) main_query`;

    try {
        var dbResult = await runQueries(query, countQuery, queryParams);
    } catch (err) {
        throw `Error while getting data from db: ${err}`;
    }
    var result = {
        '_metadata': {
            'total_count': dbResult['total_count'],
            'row_count': dbResult['row_count']
        },
        'result': dbResult['result']
    };
    return result;
}

async function result(table, params, sort, limit, offset) {
    var dbParams = parseParams(params) || {};
    sort = parseSort(sort) || '';

    try {
        var dbResult = await queryDatabase(pool, table, dbParams, sort, limit, offset);
    } catch (err) {
        throw `Error while getting data from db: ${err}`;
    }
    var result = {
        '_metadata': {
            'total_count': dbResult['total_count'],
            'row_count': dbResult['row_count']
        },
        'result': dbResult['result']
    };
    return result;
}

function parseParams(params) {
    if (!params) {
        return [];
    }
    var dbParams = [];

    dbParams = setTypeParams(dbParams, params);
    dbParams = setParam(dbParams, params, 'region', 'region');
    dbParams = setParam(dbParams, params, 'zip', 'zip');
    dbParams = setParam(dbParams, params, 'glass', 'glass');
    dbParams = setParam(dbParams, params, 'oil', 'oil');
    dbParams = setParam(dbParams, params, 'metal', 'metal');
    dbParams = setParam(dbParams, params, 'textile', 'textile');
    dbParams = setRegexParam(dbParams, params, 'station', 'station');
    dbParams = setRegexParam(dbParams, params, 'name', 'name');
    dbParams = setDateParams(dbParams, params);
    dbParams = setAreaParam(dbParams, params);

    return dbParams;
}

function setParam(dbParams, params, dbField, field) {
    if (undefined !== params[field]) {
        var paramNum = dbParams.length + 1;
        var pair = {
            'sql': `${dbField} = $${paramNum}`,
            'param': params[field]
        };
        dbParams.push(pair);
    }
    return dbParams;
}

function setRegexParam(dbParams, params, dbField, field) {
    if (undefined !== params[field]) {
        var paramNum = dbParams.length + 1;

        var pair = {
            'sql': `${dbField} ~* '.*$${paramNum}.*'`,
            'param': params[field]
        };
        if (params[field].includes('^') || params[field].includes('$')) {
            pair['sql'] = `${dbField} ~* '$${paramNum}'`;
        }
        dbParams.push(pair);
    }
    return dbParams;
}

function setAreaParam(dbParams, params) {
    if (undefined !== params['area']) {
        var paramNum = dbParams.length + 1;
        var value_list = [
            '',
            params['area'],
            ('' + params['area']).toUpperCase(),
            ('' + params['area']).toLowerCase()
        ];
        var pair = {
            'sql': `area = any($${paramNum})`,
            'param': value_list
        };
        dbParams.push(pair);
    }
    return dbParams;
}

function setTypeParams(dbParams, params) {
    var paramNum;
    var pair;
    if (undefined !== params['type']) {
        paramNum = dbParams.length + 1;
        pair = {
            'sql': `waste_type = $${paramNum}`,
            'param': params['type']
        };
        dbParams.push(pair);
    }
    if (undefined !== params['types']) {
        paramNum = dbParams.length + 1;
        var types = [];
        if (params['types'] instanceof Array) {
            types = params['types'];
        } else {
            types = [params['types']];
        }
        pair = {
            'sql': `waste_type = any($${paramNum})`,
            'param': types
        };
        dbParams.push(pair);
    }
    return dbParams;
}

function setDateParams(dbParams, params) {
    var paramNum;
    var pair;
    if (undefined !== params['start']) {
        paramNum = dbParams.length + 1;
        let startDate = Moment(params['start']);
        if (startDate.isValid()) {
            pair = {
                'sql': `col_date >= $${paramNum}`,
                'param': startDate.format('YYYY-MM-DD')
            };
            dbParams.push(pair);
        }
    }
    if (undefined !== params['end']) {
        paramNum = dbParams.length + 1;
        let endDate = Moment(params['end']);
        if (endDate.isValid()) {
            pair = {
                'sql': `col_date <= $${paramNum}`,
                'param': endDate.format('YYYY-MM-DD')
            };
            dbParams.push(pair);
        }
    }
    return dbParams;
}

function parseSort(sort) {
    if (!sort) {
        return false;
    }
    var sortArr = sort.split(',');
    if (!Array.isArray(sortArr)) {
        sortArr = [ sortArr ];
    }

    var dbSort = [];
    _.each(sortArr, function(sort) {
        var sortParam = sort.split(':');
        var param = sortParam[0];
        if ('date' === param) {
            param = 'col_date';
        }
        var order = ' asc';
        if (sortParam[1]) {
            order = ` ${sortParam[1]}`;
        }
        dbSort.push(`${param}${order}`);
    });

    return dbSort.join(', ');
}
