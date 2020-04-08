tee /etc/apt/sources.list.d/pritunl.list << EOF
deb http://repo.pritunl.com/stable/apt buster main
EOF

locale-gen en_US en_US.UTF-8
dpkg-reconfigure locales
ln -sf /usr/share/zoneinfo/Asia/Colombo /etc/localtime

apt-get install dirmngr
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv E162F504A20CDF15827F718D4B7C549A058F8B6B
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
apt-get update -y
apt-get -y install pritunl