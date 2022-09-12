Downloads the demonstrations and setups a volume, so other docker containers can access it.

# Getting Started
1. Create an `.env` File with:
```
DATA_ROOT=data_wombat
NUM_WATERFALL_DEMOS=100 
NUM_VILLAGE_DEMOS=100 
NUM_CAVE_DEMOS=100 
NUM_ANIMAL_DEMOS=100
```
where DATA_ROOT=data_wombat or DATA_ROOT=data 
- data_wombat: Saves the on mounted shared wombat-server folder 
- data: Saves on host server (Bison)

2. Run `run.sh`
3. The downloaded data is now available in the volume ka-basalt-2022-datadownloader_data. When running the core repo ka-basalt-2022, the project will access the data in that volume.
4. [The following is already done for the ka-basalt-2022 repo] You can add that volume to your project's `docker-compose.yaml` file:
```
volumes:
  ka-basalt-2022-datadownloader_data:
    external: true
```

## Changing files after docker image was build
1. Start docker container in interactive mode
```shell
docker run -it --name kabasalt_data_downloader -v ka-basalt-2022-datadownloader_data:/home/data kabasalt_data_downloader /bin/bash
```

2. run download_dataset.py e.g.: 

```shell
python download_dataset.py --json-file /home/resources/pen-animals-Jul-28.json --output-dir /home/data/MineRLBasaltFindCave-v0 --num-demos 100
python download_dataset.py --json-file /home/resources/build-house-Jul-28.json --output-dir /home/data/MineRLBasaltBuildVillageHouse-v0 --num-demos 100
python download_dataset.py --json-file /home/resources/pen-animals-Jul-28.json --output-dir /home/data/MineRLBasaltCreateVillageAnimalPen-v0 --num-demos 100
python download_dataset.py --json-file /home/resources/waterfall-Jul-28.json --output-dir /home/data/MineRLBasaltMakeWaterfall-v0 --num-demos 100
```

## follow download process
docker logs -f kabasalt_data_downloader
