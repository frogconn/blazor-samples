#!/bin/bash


NAME=blazor-syncfustion.kpsolution.dev
docker stop $NAME;
docker rm -f $NAME;

docker run -it -d -p 4012:80 --name $NAME \
  --memory="400m" --cpus="0.7" \
   kp/blazor-syncfusion:dev;

docker logs -f $NAME