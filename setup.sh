apt-get -y install wireguard curl

curl --silent "https://api.github.com/repos/pritunl/pritunl/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'

PRITUNL_VERSION=$(curl --silent "https://api.github.com/repos/pritunl/pritunl/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')

curl -LJO "https://github.com/pritunl/pritunl/releases/download/${PRITUNL_VERSION}/pritunl_${PRITUNL_VERSION}-0debian1.buster_amd64.deb"
dpkg -i "pritunl_${PRITUNL_VERSION}-0debian1.buster_amd64.deb"|| apt-get -f -y install
rm "pritunl_${PRITUNL_VERSION}-0debian1.buster_amd64.deb"

