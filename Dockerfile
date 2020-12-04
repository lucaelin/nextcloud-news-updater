FROM python:3-alpine

LABEL maintainer="Thomas Bruckmann <thomas.bruckmann@posteo.de>"

RUN pip install nextcloud_news_updater

COPY docker_entrypoint.sh /

ENTRYPOINT ["/docker_entrypoint.sh"]
