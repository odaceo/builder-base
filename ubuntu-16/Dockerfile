FROM buildpack-deps:16.04

LABEL vendor="Odaceo" 
LABEL maintainer="Alexandre GARINO <alexandre.garino@odaceo.ch>"

ENV LANG C.UTF-8

ADD scripts/*.sh /root/
RUN set -eux; /root/devtools.sh

VOLUME ["/code"]
WORKDIR /code

CMD [ "/bin/bash" ]
