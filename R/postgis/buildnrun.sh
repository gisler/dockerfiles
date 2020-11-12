#!/bin/bash

mkdir $1
chmod -R 0777 $1
docker build -t postgis .
docker run -d --rm -p 5432:5432 -e POSTGRES_PASSWORD=$2 -v $1:/var/lib/postgresql/data postgis
