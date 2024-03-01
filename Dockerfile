FROM docker.io/library/alpine:3.19

RUN apk upgrade
RUN apk add autoconf automake autoconf-archive libtool pkgconfig alpine-sdk
RUN wget https://ftp.kaist.ac.kr/gnu/autoconf/autoconf-2.72.tar.gz
RUN tar -zxvf autoconf-2.72.tar.gz
RUN cd autoconf-2.72 && ./configure && make && make install
RUN autoconf -V | grep -q "autoconf (GNU Autoconf) 2.72"

VOLUME /src
WORKDIR /src

ADD entry.sh /
CMD ["/entry.sh"]
