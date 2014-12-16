#!/bin/bash
set -e

function cleanup {
    exit $?
}

trap "cleanup" EXIT


echo "Update the package manager"
sudo apt-get update

echo "add needed PPAs"
sudo apt-get install python-software-properties python g++ make -y
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
touch /etc/apt/sources.list.d/10gen.list
if grep -vFxq "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" /etc/apt/sources.list.d/* 
then
    echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list
fi

echo "Install packages"
sudo apt-get update
sudo apt-get install git vim curl mongodb-10gen -y

echo "Clone, compile & install node"
cd /home/vagrant
if [ ! -d "node" ] ; then
  git clone https://github.com/joyent/node.git
fi
cd node/
git checkout v0.10.32
python configure
sudo make
sudo make install

echo "Install npm"
curl -s -L https://www.npmjs.org/install.sh > npm-install-$$.sh
sudo clean=no sh npm-install-$$.sh
rm npm-install-$$.sh
sudo npm install -g csvtojson
sudo npm install -g pm2

# Install dependencies
cd /vagrant && npm install

# Import GeoJSON in MongoDB
mongo openerz --eval "db.calendar.remove()"
mongo openerz --eval "db.station.remove()"
node loadData.js

# start node web server
pm2 kill
PORT="80" pm2 start /vagrant/index.js --name erz --watch
pm2 status

exit 0
