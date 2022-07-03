#!/bin/sh
NAME=nameImage
IMAGE=itaimalek/rickandmorty
PATH=8080
#pull
docker pull $(IMAGE)
#run
docker run -itd  --name $(NAME) -e RUN="TRUE" -P 8080:8000 $(IMAGE)
#stop
docker stop $(IMAGE)
#remove
docker rmi $(IMAGE)
#tag
docker tag  $(IMAGE)  n038060222\EX1:img
#push
docker push n038060222\EX1:img
