#!/bin/sh

python3 download_dataset.py --json-file /home/resources/find-cave-Jul-28.json --output-dir /home/data/MineRLBasaltFindCave-v0 --num-demos ${NUM_CAVE_DEMOS}
python3 download_dataset.py --json-file /home/resources/build-house-Jul-28.json --output-dir /home/data/MineRLBasaltBuildVillageHouse-v0 --num-demos ${NUM_VILLAGE_DEMOS}
python3 download_dataset.py --json-file /home/resources/pen-animals-Jul-28.json --output-dir /home/data/MineRLBasaltCreateVillageAnimalPen-v0 --num-demos ${NUM_ANIMAL_DEMOS}
python3 download_dataset.py --json-file /home/resources/waterfall-Jul-28.json --output-dir /home/data/MineRLBasaltMakeWaterfall-v0 --num-demos ${NUM_WATERFALL_DEMOS}
## Base Models & Weights
## width 1x
wget https://openaipublic.blob.core.windows.net/minecraft-rl/models/foundation-model-1x.model -P /home/data/VPT-models
wget https://openaipublic.blob.core.windows.net/minecraft-rl/models/foundation-model-1x.weights -P /home/data/VPT-models
## width 2x
wget https://openaipublic.blob.core.windows.net/minecraft-rl/models/2x.model -O /home/data/VPT-models/foundation-model-2x.model
wget https://openaipublic.blob.core.windows.net/minecraft-rl/models/foundation-model-2x.weights -P /home/data/VPT-models
## width 3x
wget https://openaipublic.blob.core.windows.net/minecraft-rl/models/foundation-model-3x.model -P /home/data/VPT-models
wget https://openaipublic.blob.core.windows.net/minecraft-rl/models/foundation-model-3x.weights -P /home/data/VPT-models
## BC finetuned on house building, width 3x
wget https://openaipublic.blob.core.windows.net/minecraft-rl/models/bc-house-3x.weights -P /home/data/VPT-models
## RL finetuned for crafting diamond pickaxe ASAP, width 2x
wget https://openaipublic.blob.core.windows.net/minecraft-rl/models/rl-from-foundation-2x.weights -P /home/data/VPT-models

chown -R 1001:1001 /home/data/
chown -R 1001:1001 /home/data/VPT-models
