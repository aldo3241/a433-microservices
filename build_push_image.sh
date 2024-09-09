#!/bin/bash
docker build -t item-app:v1 .
docker image ls
docker login ghcr.io -u aldo3241 -p $PAT
docker image tag item-app:v1 ghcr.io/aldo3241/item-app:v1
docker push ghcr.io/aldo3241/item-app:v1
