#!/bin/bash
docker stop $(docker ps)
docker rm $(docker ps -a)
docker rmi $(docker images)
docker volume rm $(docker volume ls)
