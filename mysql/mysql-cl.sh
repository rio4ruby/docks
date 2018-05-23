#!/bin/sh
name=skywalker
passwd=weather1
version=5.5

docker run \
  -it \
  --link $name:mysql \
  --rm mysql:$version sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'


#  docker run \
#       --name some-app \
#       --link some-mysql:mysql \
#       -d application-that-uses-mysql