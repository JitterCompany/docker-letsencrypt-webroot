FROM certbot/certbot:v1.2.0

RUN apk add bash
RUN apk add grep
RUN apk add --update coreutils

# Allows 'docker' to be used in renew hook
# NOTE: link docker.sock to make this work
RUN apk add docker-cli
RUN rm -rf /var/cache/apk/*

ADD start.sh /bin/start.sh

ENTRYPOINT [ "/bin/start.sh" ]
