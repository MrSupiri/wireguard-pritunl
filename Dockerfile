FROM debian:bullseye

LABEL MAINTAINER="Isala Piyarisi <hello@isala.me>"

COPY . .

RUN apt-get update && apt-get install -y --force-yes wireguard curl

RUN bash setup.sh

ENTRYPOINT ["bash","enterypoint.sh"]

CMD ["/usr/bin/tail", "-f","/var/log/pritunl.log"]
