# Author: Huijie Wei
FROM ubuntu:14.04.2
MAINTAINER Huijie Wei huijiewei@outlook.com
ADD ./assets/sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    make \
    gcc \
    g++ \
    automake \
    libtool \
    mysql-client \
    libmysqlclient15-dev \
    libxml2-dev \
    libexpat1-dev \
    git
RUN mkdir -p /usr/src/coreseek/
RUN git clone https://github.com/huijiewei/Coreseek-Fix.git /usr/src/coreseek/
RUN chmod 777 -R /usr/src/coreseek
WORKDIR /usr/src/coreseek/mmseg-3.2.14
RUN ./bootstrap
RUN ./configure --prefix=/usr/local/mmseg3
RUN make && make install
WORKDIR /usr/src/coreseek/csft-4.1
RUN sh buildconf.sh
RUN ./configure --prefix=/usr/local/coreseek --without-unixodbc --with-mmseg --with-mmseg-includes=/usr/local/mmseg3/include/mmseg/ --with-mmseg-libs=/usr/local/mmseg3/lib/ --with-mysql
RUN make && make install
WORKDIR /
ADD ./bin/index.sh /
RUN chmod a+x index.sh
ADD ./bin/searchd.sh /
RUN chmod a+x searchd.sh
ADD ./bin/run.sh /
RUN chmod a+x run.sh
