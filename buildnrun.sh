#!/bin/bash

mkdir $1
chmod -R 0777 $1
SHARED=$1 PASSWORD=$2 docker compose up
