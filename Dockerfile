FROM docker.io/library/alpine:3.19

LABEL org.opencontainers.image.source="https://github.com/corona10/cpython_autoconf"
LABEL org.opencontainers.image.base.name="docker.io/library/alpine:3.19"
LABEL org.opencontainers.image.authors="Donghee Na"
LABEL org.opencontainers.image.title="autoconf 2.72 container for CPython"
LABEL org.opencontainers.image.description="Container image with autoconf 2.72 tools to regenerate Python's configure script."

RUN apk upgrade && \
    apk add \
        alpine-sdk \
        autoconf \
        automake \
        autoconf-archive \
        libtool \
        pkgconfig
RUN curl https://ftp.gnu.org/gnu/autoconf/autoconf-2.72.tar.gz | tar -zxvf -
RUN cd autoconf-2.72 && ./configure && make && make install

VOLUME /src
WORKDIR /src

ADD entry.sh /
CMD ["/entry.sh"]
