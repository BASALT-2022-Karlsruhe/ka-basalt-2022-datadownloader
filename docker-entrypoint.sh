#!/bin/sh

python3 download_dataset.py --json-file /home/resources/find-cave-Jul-28.json --output-dir /home/data/MineRLBasaltFindCave-v0 --num-demos ${NUM_CAVE_DEMOS}
python3 download_dataset.py --json-file /home/resources/build-house-Jul-28.json --output-dir /home/data/MineRLBasaltBuildVillageHouse-v0 --num-demos ${NUM_VILLAGE_DEMOS}
python3 download_dataset.py --json-file /home/resources/pen-animals-Jul-28.json --output-dir /home/data/MineRLBasaltCreateVillageAnimalPen-v0 --num-demos ${NUM_ANIMAL_DEMOS}
python3 download_dataset.py --json-file /home/resources/waterfall-Jul-28.json --output-dir /home/data/MineRLBasaltMakeWaterfall-v0 --num-demos ${NUM_WATERFALL_DEMOS}
## Model & Weights
wget https://openaipublic.blob.core.windows.net/minecraft-rl/models/foundation-model-1x.model -P /home/data/VPT-models
wget https://openaipublic.blob.core.windows.net/minecraft-rl/models/foundation-model-1x.weights -P /home/data/VPT-models

chown -R 1001:1001 /home/data/
chown -R 1001:1001 /home/data/VPT-models
