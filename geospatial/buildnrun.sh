#!/bin/bash

shared=/srv/data

sudo mkdir $shared
sudo chmod -R 777 $shared
sudo docker build -t geospatial .
sudo docker run -d --restart unless-stopped -p 8787:8787 -e PASSWORD=$1 -v $shared:/home/rstudio/shared geospatial
