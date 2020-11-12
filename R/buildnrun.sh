#!/bin/bash

mkdir -p $1/shinyapps
chmod -R 0777 $1
SHARED=$1 PASSWORD=$2 docker-compose up --build -d
