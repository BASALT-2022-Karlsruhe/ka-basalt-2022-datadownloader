#!/bin/sh

# build and run container - the data will be downloaded to the created data folder
docker-compose up --build # -d

docker volume inspect ka-basalt-2022-datadownloader_kabasalt_data