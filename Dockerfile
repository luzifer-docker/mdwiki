FROM python:3.6-alpine

ENV MDWIKI_VERSION=0.6.2

RUN set -ex \
 && apk --no-cache add bash curl unzip \
 && mkdir -p /usr/src/mdwiki \
 && curl -sSfLo /tmp/mdwiki.zip "https://github.com/Dynalon/mdwiki/releases/download/${MDWIKI_VERSION}/mdwiki-${MDWIKI_VERSION}.zip" \
 && unzip -j -d /usr/src/mdwiki /tmp/mdwiki.zip \
 && rm /tmp/mdwiki.zip \
 && apk --no-cache del curl unzip \
 && rm -rf /var/cache/apk/*

COPY docker-entrypoint.sh /

VOLUME /data
WORKDIR /data

EXPOSE 80

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["serve"]
