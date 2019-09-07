#!/usr/bin/env bash

# Initial setup
PWD=$(pwd)
source $PWD/.env

cat >$PWD/config.json <<EOF
{
  "database": {
    "engine": "mysql",
    "host": "db",
    "name": "$MYSQL_DATABASE",
    "user": "$MYSQL_USER",
    "password": "$MYSQL_ROOT_PASSWORD",
    "port": 3306
  }
}
EOF

sudo docker-compose up -d
