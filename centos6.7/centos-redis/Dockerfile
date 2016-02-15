FROM       registry.aliyuncs.com/xqh/centos6
MAINTAINER xuqh "xqh_163@163.com"

ADD redis-3.0.7.tar.gz /

WORKDIR /redis-3.0.7

RUN yum install -y gcc

RUN make && make install

ENV RedisPwd TopRedis

RUN sed -ri 's/daemonize no/daemonize yes/g' /redis-3.0.7/redis.conf
RUN sed -ri "s/# requirepass foobared/requirepass ${RedisPwd}/g" /redis-3.0.7/redis.conf
RUN sed -ri 's/port 6379/port 8379/g' /redis-3.0.7/redis.conf
RUN sed -ri "s/dir \.\//dir \/data/g" /redis-3.0.7/redis.conf

VOLUME ["/data"]

EXPOSE 8379

#ENTRYPOINT ["/redis-3.0.7/src/redis-server","/redis-3.0.7/redis.conf"]

ADD run.sh /run.sh

CMD	["/run.sh"]
