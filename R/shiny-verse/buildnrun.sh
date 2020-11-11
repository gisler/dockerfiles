#!/bin/bash

mkdir $1
chmod -R 0777 $1
docker build -t shiny-verse .
docker run -d --rm -p 80:3838 -v $1:/srv/shiny-server/ shiny-verse
