#!/bin/sh


################
#Input the image name

IMAGE_NAME="mytestrepo.azurecr.io/imagename"

VERSION=`date +%d%m%y`

################
#Input the docker username and password for the authentication
DOCKER_PASS="iuqwhnjwqcknw"
DOCKERHOST="mytestrepo.azurecr.io"
DOCKER_HUB_USERNAME="mmytestrepouser"

################
#Specify the docker image ID 

DOCKERIMAGE=01bbe11b1e57

echo $DOCKER_PASS | docker login $DOCKERHOST --username $DOCKER_HUB_USERNAME --password-stdin

docker commit $DOCKERIMAGE $IMAGE_NAME:$VERSION

docker push $IMAGE_NAME:$VERSION

################
#Removing old unused images from the localend which was created more than 15days ago

docker image prune -a --filter "until=336h" -f
