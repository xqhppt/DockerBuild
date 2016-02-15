#!/bin/bash

echo 'start redis server...'

/redis-3.0.7/src/redis-server /redis-3.0.7/redis.conf

while true
do
    echo 'redis server running...'
    sleep 60
done
