FROM alpine:3.5

ADD migrate /usr/local/bin
ADD waitforit /usr/local/bin

RUN mkdir /migrations
WORKDIR /migrations

ADD docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
