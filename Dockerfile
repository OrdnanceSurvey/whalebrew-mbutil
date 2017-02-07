FROM python:2.7-alpine

RUN apk add --no-cache git \
 && cd /usr/local \
 && git clone git://github.com/mapbox/mbutil.git \
 && apk del git

ENTRYPOINT ["/usr/local/mbutil/mb-util"]
