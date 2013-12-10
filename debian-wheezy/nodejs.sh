cp sources.list.d/wheezy-backports.list /etc/apt/sources.list.d/
apt-get update
#apt-get install nodejs
apt-get install nodejs-legacy
curl https://npmjs.org/install.sh | sh
