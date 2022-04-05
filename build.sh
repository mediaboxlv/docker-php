set -ex
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=rolandinsh
# image name
IMAGE=php
docker build -t $USERNAME/$IMAGE:latest .
docker build -t $USERNAME/$IMAGE:2.7.4 .
docker build -t $USERNAME/$IMAGE:2.7 .
