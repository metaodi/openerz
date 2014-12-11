Installation
=======
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

Then open http://localhost:8000/doc

Testing
=======

```bash
npm test
```
