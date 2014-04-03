cp sources.list.d/wheezy-backports.list /etc/apt/sources.list.d/
apt-get update
#apt-get install -y -q nodejs
apt-get install -y -q nodejs-legacy
# http://stackoverflow.com/questions/20174399/cannot-install-npm-on-vagrant-during-provision
curl https://www.npmjs.org/install.sh | clean=no sh
