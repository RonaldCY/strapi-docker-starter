FROM strapi/base:latest

RUN npm install --global --unsafe-perm strapi@3.6.1

RUN mkdir /srv/app && chown 1000:1000 -R /srv/app

WORKDIR /srv/app

VOLUME /srv/app

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["strapi", "develop"]