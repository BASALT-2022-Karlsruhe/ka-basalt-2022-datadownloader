#!/bin/sh

# Might need to uncomment when doing changes to the Dockerfile
# docker volume rm ka-basalt-2022-datadownloader_data

# build and run container - the data will be downloaded to the created data folder
docker-compose up -d --build

docker volume inspect ka-basalt-2022-datadownloader_data_wombat

# follow download process
docker logs -f kabasalt_data_downloader