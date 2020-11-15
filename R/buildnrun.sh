#!/usr/bin/env bash

mkdir -p $1/shinyapps
mkdir -p $1/pgdata
chmod -R 0777 $1
7z a -t7z -p$3 geospatial/users/users.7z users
SHARED=$1 PASSWORD=$2 USERS_PASSWORD=$3 docker-compose up --build -d
