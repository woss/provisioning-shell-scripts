cp sources.list.d/wheezy-backports.list /etc/apt/sources.list.d/
apt-get update
apt-get -t wheezy-backports install -y -q git
