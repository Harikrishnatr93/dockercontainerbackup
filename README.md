# dockercontainerbackup


By using the bashscript, the script will create the backup of current status of running docker container.
The created image will  also upload to container registry.

The script can put in a cronjob to automate the backup and upload to container registry.


1. To run the bashscript, you have to specify the registry authentication details.

DOCKER_PASS= Input the password of container registry
DOCKERHOST= Input the docker host 
DOCKER_HUB_USERNAME= Input the docker hub username
DOCKERIMAGE= Input docker image ID
IMAGE_NAME = Docker image name

2. The docker image backup will create with date as a tag

3. The unused  old image (more than 14 days as per the current bashscript)  will be removed from the localend.
 
4. I used Azure container registry for an example, you can use any docker container registry by changing the host and authentication. 
