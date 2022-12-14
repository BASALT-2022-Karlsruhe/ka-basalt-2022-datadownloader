FROM python:3.7.13

# Copy the files
COPY --chown=1001:1001 . /home
WORKDIR /home

RUN mkdir -p /home/data
RUN mkdir -p /home/data/VPT-models

RUN mkdir -p /home/data_wombat
RUN mkdir -p /home/data_wombat/VPT-models

RUN chmod +x /home/docker-entrypoint.sh