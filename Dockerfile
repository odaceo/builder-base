ARG BUILDPACK_VERSION

FROM buildpack-deps:${BUILDPACK_VERSION}

LABEL vendor="Odaceo" 
LABEL maintainer="Alexandre GARINO <alexandre.garino@odaceo.ch>"

ENV LANG C.UTF-8

COPY scripts/devtools.sh /root/
RUN set -eux; /root/devtools.sh

VOLUME ["/code"]
WORKDIR /code

CMD [ "/bin/bash" ]
