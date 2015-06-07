#!/bin/bash

echo Stopping services
docker-compose stop

echo Stopping any running doodleshops
for i in prod man autolarge autosmall ; do
    NAME="doodleshop-$i"
    docker ps | grep $NAME > /dev/null
    if [ "$?" == "0" ] ; then
        docker rm -f $NAME > /dev/null
    fi
done
