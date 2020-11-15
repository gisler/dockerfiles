#!/usr/bin/env bash

# 7z e -pPW geospatial/users/users.7z
# 7z a -pPW geospatial/users/users.7z users -sdel

mkdir -p $1/shinyapps
mkdir -p $1/pgdata
chmod -R 0777 $1
SHARED=$1 PASSWORD=$2 USERS_PASSWORD=$3 docker-compose up --build -d
