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