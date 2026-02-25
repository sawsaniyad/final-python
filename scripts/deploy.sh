#!/bin/bash

docker stop flask-app || true
docker rm flask-app || true

docker pull nviamx/final-devops:latest

docker run -d -p 5000:5000 --name flask-app \
nviamx/final-devops:latest