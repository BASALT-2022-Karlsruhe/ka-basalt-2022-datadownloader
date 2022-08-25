FROM python:3.7.13

# Copy the files
COPY --chown=1001:1001 . /home
WORKDIR /home

ARG SAMPLES

RUN mkdir -p /home/data
RUN mkdir -p /home/data/VPT-models

# ---------------------------------------------
# Download data
# ---------------------------------------------
## Demonstrations 

ENTRYPOINT ["/bin/bash"]