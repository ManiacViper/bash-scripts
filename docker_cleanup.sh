#!/bin/bash
docker stop $(docker ps)
docker rm $(docker ps -a)
docker rmi $(docker images)
docker volume rm $(docker volume ls)
# check if docker images and processes are removed
docker images
docker ps -a
