FROM alpine:3.11.3
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="hireus@secureimages.dev"

ARG LOGSTASH_VERSION=7.5.2
ARG TARBALL_ASC="https://artifacts.elastic.co/downloads/logstash/logstash-oss-${LOGSTASH_VERSION}.tar.gz.asc"
### https://artifacts.elastic.co/downloads/logstash/logstash-oss-7.5.2.tar.gz.sha512
ARG TARBALL_SHA="34b95e5d8001f1ba361ae41ac2aee495eb46432ecce44455e6dbf63cd9d2fe5175931a6e4eb8be227b28be420111e370599f2e8b1ba7a158ad8504a657e2b1d3"
ARG GPG_KEY="46095ACC8548582C1A2699A9D27D666CD88E42B4"

ENV PATH=/usr/share/logstash/bin:/sbin:$PATH \
    LS_SETTINGS_DIR=/usr/share/logstash/config \
    LANG='en_US.UTF-8' \
    LC_ALL='en_US.UTF-8'

RUN apk add --no-cache openjdk8-jre su-exec libzmq bash libc6-compat ;\
    apk add --no-cache -t .build-deps ca-certificates gnupg openssl ;\
    set -ex ;\
    wget -O /tmp/logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-oss-${LOGSTASH_VERSION}.tar.gz ;\
    if [ "$TARBALL_SHA" ]; then \
      echo "$TARBALL_SHA  /tmp/logstash.tar.gz" | sha512sum -c - ;\
    fi ;\
    if [ "$TARBALL_ASC" ]; then \
      wget -O /tmp/logstash.tar.gz.asc "$TARBALL_ASC" ;\
      export GNUPGHOME="$(mktemp -d)" ;\
      ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" \
      || gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" \
      || gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY" ) ;\
      gpg --batch --verify /tmp/logstash.tar.gz.asc /tmp/logstash.tar.gz ;\
      rm -rf "$GNUPGHOME" || true ;\
    fi ;\
    tar -xzf /tmp/logstash.tar.gz -C /tmp/ ;\
    mv /tmp/logstash-$LOGSTASH_VERSION /usr/share/logstash ;\
    adduser -DH -s /sbin/nologin logstash ;\
    chown -R logstash:logstash /usr/share/logstash ;\
    apk del --purge .build-deps ;\
    rm -rf /tmp/* /var/cache/apk/*

ADD data/ /

RUN chmod +x /*.sh

EXPOSE 5044 9600

ENTRYPOINT ["/logstash-entrypoint.sh"]

CMD ["-e", ""]
