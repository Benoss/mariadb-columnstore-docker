FROM debian:9

RUN apt-get -y install expect perl openssl file sudo libdbi-perl libboost-all-dev \
                        libreadline-dev rsync libsnappy1 net-tools libdbd-mysql-perl \
                        && rm -rf /var/lib/apt/lists/*

