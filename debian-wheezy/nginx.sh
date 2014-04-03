cp sources.list.d/nginx.list /etc/apt/sources.list.d/
wget http://nginx.org/keys/nginx_signing.key
apt-key add nginx_signing.key
apt-get update
apt-get remove nginx-*
apt-get install -y -q nginx
/etc/init.d/nginx restart
