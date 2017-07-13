[![Build Status](https://travis-ci.org/metaodi/openerz.svg?branch=master)](https://travis-ci.org/metaodi/openerz)

Installation
============
To install the Open ERZ API locally, first clone the repository and install the dependencies, for that, you need to have the npm node packager manager installed: https://www.npmjs.org/.

```bash
git clone git@github.com:metaodi/openerz.git
cd openerz
npm install
```

Start the node server locally:
```bash
node index.js
```

Or use pm2:
```bash
pm2 start index.js
```

Then open http://localhost:8080/doc

Testing
=======

```bash
npm test
```

Development
===========

To setup the whole environment there is a vagrant box. All you have to do to run it is:

1. [Install Vagrant](https://www.vagrantup.com/)
2. Clone this repo
3. Run `vagrant up` on your command line

Update data
===========

Each year, ERZ will release the new waste collection data. 
The `loadData.js` script is used for that:

```bash
node loadData.js
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
