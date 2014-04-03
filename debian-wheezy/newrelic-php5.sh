wget -O - http://download.newrelic.com/548C16BF.gpg | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.newrelic.com/debian/ newrelic non-free" > /etc/apt/sources.list.d/newrelic.list'
sudo apt-get update
sudo apt-get install -y -q newrelic-php5
sudo newrelic-install install
apt-get install -y -q newrelic-sysmond
#nrsysmond-config --set license_key=
/etc/init.d/newrelic-sysmond start
/etc/init.d/php-fastcgi restart
