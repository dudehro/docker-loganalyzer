FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    wget \
    libextutils-makemaker-dist-zilla-develop-perl \
    make \
    build-essential \
    libmaxminddb-dev \
    libncursesw5-dev

# pgbadger
WORKDIR /tmp
RUN wget https://github.com/darold/pgbadger/archive/refs/tags/v12.0.tar.gz && \
    tar -xzf v12.0.tar.gz && \
    cd /tmp/pgbadger-12.0 && \
    perl Makefile.PL && \
    make && make install && \
    rm -rf /tmp/v12.0.tar.gz /tmp/pgbadger-12.0

# goaccess
RUN wget https://tar.goaccess.io/goaccess-1.7.1.tar.gz && \ 
    tar -xzvf goaccess-1.7.1.tar.gz && \
    cd goaccess-1.7.1/ && \
    ./configure --enable-utf8 --enable-geoip=mmdb && \
    make && \
    make install && \
    rm -rf /tmp/goaccess-1.7.1.tar.gz /tmp/goaccess-1.7.1/

