#!/bin/bash
set -e

mysql -uroot -p"$MYSQL_ROOT_PASSWORD" <<-EOSQL
GRANT ALL ON example.* TO example@'%' IDENTIFIED BY 'example';
CREATE DATABASE example;
EOSQL

#mysql -uroot -p"$MYSQL_ROOT_PASSWORD" -Dexample < /docker-entrypoint-initdb.d/example.dmp

