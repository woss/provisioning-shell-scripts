cp sources.list.d/backports.list /etc/apt/sources.list.d/
apt-get update
apt-get install -y -q mosh
locale-gen sv_SE.UTF-8
echo "Now open the UDP ports 60000 and 61000 using Turnkey Linux Hub Servers Dashboard. Instance -> Firewall rules -> Add UDP 60000:61000"
