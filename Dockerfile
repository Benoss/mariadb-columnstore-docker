FROM debian:9
MAINTAINER Benoit Chabord <>

ENV MCS_MAJOR_VERSION "1.0.11"
ENV MCS_MINOR_VERSION "-1"

RUN apt-get update \ 
    && apt-get -y install expect perl openssl file sudo libdbi-perl libboost-all-dev \
    && apt-get -y install libreadline-dev rsync libsnappy1 net-tools libdbd-mysql-perl \
    && rm -rf /var/lib/apt/lists/*



RUN mkdir /root/install/ && cd /root/install
    && curl -SL https://downloads.mariadb.com/ColumnStore/$MCS_MAJOR_VERSION/debian/dists/stretch/main/binary_amd64/mariadb-columnstore-$MCS_MAJOR_VERSION$MCS_MINOR_VERSION-stretch.x86_64.deb.tar.gz \
    | tar -zxf && dpkg -i *.deb && rm -rf /root/install

