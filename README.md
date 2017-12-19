[![Build Status](https://travis-ci.org/metaodi/openerz.svg?branch=master)](https://travis-ci.org/metaodi/openerz)

Installation
============

To setup the whole environment there is a docker setup. All you have to do to run it is:

1. [Install Docker](https://www.docker.com/)
1. git clone git@github.com:metaodi/openerz.git
1. Clone this repo
1. Copy `.env.dist` to `.env`
1. Run `docker-compose up` on your command line

Then open http://localhost:9999/doc (or whatever port you specified in your `.env` file)

Testing
=======

```bash
npm test
```

Update data
===========

Each year, ERZ will release the new waste collection data. 
The `loadData.js` script is used for that (run it **in** the container):

```bash
docker-compose exec openerz sh -c "node loadData.js"
```

To update the data that is used on the production version, make sure you run the `loadData.js` script with the correctly set MongoDB URL:

```bash
MONGOLAB_URI='mongodb://<dbuser>:<dbpassword>@dsXXXXX.mongolab.com:63630/heroku_appXXXX' node loadData.js
```

You can find the URI with the following `heroku` command:

```bash
heroku run env --app openerz
```

Release
=======

To create a new release follow these steps:

1. Update the version number in `package.json`
1. Update the `CHANGELOG.md`
1. Create a [new release/tag on GitHub](https://github.com/metaodi/openerz/releases)

The new tag on GitHub triggers a build on TravisCI, which deploys the application to heroku (http://openerz.herokuapp.com).

Credits
=======

![Logo](https://raw.githubusercontent.com/metaodi/openerz/master/public/logo.png)

The logo was created by sagit milshtein from the Noun Project (CC-BY 3.0)
