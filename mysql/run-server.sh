#!/bin/sh
name=skywalker
passwd=weather1
version=5.5

pwd

docker run \
       --name $name \
       -e MYSQL_ROOT_PASSWORD=$passwd \
       --mount type=bind,source=/c/Users/Christopher/Documents/data,target=/docker-entrypoint-initdb.d \
       -d mysql:$version

