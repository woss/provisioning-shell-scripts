#!/bin/sh -x -v
for i in "$@"
do
case $i in
    -key=*|--license-key=*)
    YOURLICENSEKEY="${i#*=}"
 
    ;;
    -app=*|--app-name=*)
    APP_NAME="${i#*=}"
    ;;
 
esac
done
wget -O - http://download.newrelic.com/548C16BF.gpg | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.newrelic.com/debian/ newrelic non-free" > /etc/apt/sources.list.d/newrelic.list'
sudo apt-get update
sudo apt-get install -y -q newrelic-php5 newrelic-sysmond
sudo newrelic-install install
 
sed -i.bak  's/newrelic\.license \= \"\"/newrelic\.license \= \"'$YOURLICENSEKEY'\"/g' /etc/php5/conf.d/newrelic.ini
sed -i.bak  's/;newrelic\.appname \= \"PHP Application\"/newrelic\.appname \= \"'$APP_NAME'\"/g' /etc/php5/conf.d/newrelic.ini
nrsysmond-config --set license_key=$YOURLICENSEKEY
/etc/init.d/newrelic-sysmond start
/etc/init.d/apache2 reload