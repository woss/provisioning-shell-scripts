
### NewRelic

execute `newrelic-php5.sh` script like this:

    sh newrelic-php5.sh --key=YOUR_KEY --app=NAME_OF_YOUR_APP

If you want to execte only that script somewhere where you don't have this repo use following:

    curl https://raw.githubusercontent.com/woss/provisioning-shell-scripts/master/debian-wheezy/newrelic-php5.sh > newrelic-installer.sh && sh newrelic-installer.sh --key=YOUR_KEY --app=NAME_OF_YOUR_APP
