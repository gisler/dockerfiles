#!/bin/bash

sudo mkdir $1
sudo chmod -R 0777 $1
sudo docker build -t shiny-verse .
sudo docker run -d --rm -p 80:3838 -v $1:/srv/shiny-server/ shiny-verse
