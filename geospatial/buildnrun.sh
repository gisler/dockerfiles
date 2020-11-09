#!/bin/bash

sudo mkdir $1
sudo chmod -R 777 $1
sudo docker build -t geospatial .
sudo docker run -d --rm -p 8787:8787 -e PASSWORD=$2 -v $1:/home/rstudio/shared geospatial
