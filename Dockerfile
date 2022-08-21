FROM python:3.7.13

# Copy the files
COPY --chown=1001:1001 . /home
WORKDIR /home
RUN mkdir -p /home/data
RUN mkdir -p /home/data/VPT-models

# ---------------------------------------------
# Download data
# ---------------------------------------------
## Demonstrations 
RUN python3 download_dataset.py --json-file /home/find-cave-Jul-28.json --output-dir /home/data/MineRLBasaltFindCave-v0 --num-demos 20
RUN python3 download_dataset.py --json-file /home/build-house-Jul-28.json --output-dir /home/data/MineRLBasaltBuildVillageHouse-v0 --num-demos 20
RUN python3 download_dataset.py --json-file /home/pen-animals-Jul-28.json --output-dir /home/data/MineRLBasaltCreateVillageAnimalPen-v0 --num-demos 20
RUN python3 download_dataset.py --json-file /home/waterfall-Jul-28.json --output-dir /home/data/MineRLBasaltMakeWaterfall-v0 --num-demos 20

## Model & Weights
RUN wget https://openaipublic.blob.core.windows.net/minecraft-rl/models/foundation-model-1x.model -P /home/data/VPT-models
RUN wget https://openaipublic.blob.core.windows.net/minecraft-rl/models/foundation-model-1x.weights -P /home/data/VPT-models

RUN chown -R 1001:1001 /home/data/
RUN chown -R 1001:1001 /home/data/VPT-models
