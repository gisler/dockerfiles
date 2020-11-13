#!/usr/bin/env bash

mkdir $1
chmod -R 0777 $1
docker build -t geospatial .
docker run -d --rm -p 8787:8787 -e PASSWORD=$2 -v $1:/home/rstudio/shared geospatial
