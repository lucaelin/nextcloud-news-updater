FROM python:3-alpine

LABEL maintainer="Thomas Bruckmann <thomas.bruckmann@posteo.de>"

RUN    apk add php git \
    && pip install git+git://github.com/nextcloud/news-updater.git

COPY docker_entrypoint.sh /

ENTRYPOINT ["/docker_entrypoint.sh"]
