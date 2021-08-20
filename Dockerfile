FROM centos:7

ADD redis-5.0.9.tar.gz /home
COPY redis_install.sh /home

RUN sh /home/redis_install.sh

ENTRYPOINT /usr/local/redis/bin/redis-server /usr/local/redis/conf/redis.conf
