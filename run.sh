#!/bin/sh

# build and run container - the data will be downloaded to the created data folder
docker-compose up --build # -d

docker volume inspect kabasalt_data