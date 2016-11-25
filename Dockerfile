FROM python:2.7-alpine

RUN apk add --no-cache git \
 && cd /root \
 && git clone git://github.com/mapbox/mbutil.git \
 && cd mbutil \
 && python setup.py install \
 && cd /root \
 && rm -rf mbutil \
 && apk del git

ENTRYPOINT mb-util