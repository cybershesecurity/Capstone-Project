#!/bin/sh
docker kill $(docker ps -q)
docker run  --rm -it -d -p 127.0.0.1:81:80 vulnerables/web-dvwa
