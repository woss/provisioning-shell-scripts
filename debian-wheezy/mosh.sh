apt-get update
apt-get install -y -q mosh
# installed locales should match the locales of the users that use mosh
locale-gen en_US.UTF-8
locale-gen sv_SE.UTF-8
echo "Now open the UDP ports 60000 and 61000 using Turnkey Linux Hub Servers Dashboard. Instance -> Firewall rules -> Add UDP 60000:61000"
