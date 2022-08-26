Downloads the demonstrations and setups a volume, so other docker containers can access it.

# Getting Started
1. Create an `.env` File with:
```
NUM_WATERFALL_DEMOS=100 
NUM_VILLAGE_DEMOS=100 
NUM_CAVE_DEMOS=100 
NUM_ANIMAL_DEMOS=100
```
2. Run `run.sh`
3. The downloaded data is now available in the volume ka-basalt-2022-datadownloader_data. When running the core repo ka-basalt-2022, the project will access the data in that volume.
4. [The following is already done for the ka-basalt-2022 repo] You can add that volume to your project's `docker-compose.yaml` file:
```
volumes:
  ka-basalt-2022-datadownloader_data:
    external: true
```
## Changing files after docker image was build
1. Access the docker container 
```shell
docker exec -it kabasalt_data_downloader /bin/bash
```

2. run download_dataset.py e.g.: 

```shell
python download_dataset.py --json-file /home/pen-animals-Jul-28.json --output-dir /home/data/MineRLBasaltCreateVillageAnimalPen-v0 --num-demos 100
python3 download_dataset.py --json-file /home/build-house-Jul-28.json --output-dir /home/data/MineRLBasaltBuildVillageHouse-v0 --num-demos 100
python3 download_dataset.py --json-file /home/pen-animals-Jul-28.json --output-dir /home/data/MineRLBasaltCreateVillageAnimalPen-v0 --num-demos 100
python3 download_dataset.py --json-file /home/waterfall-Jul-28.json --output-dir /home/data/MineRLBasaltMakeWaterfall-v0 --num-demos 100
```

See DockerFile for more examples.
The examples are stored within a binded docker volume
