set -ex
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=rolandinsh
# image name
IMAGE=php
docker build -t $USERNAME/$IMAGE:latest-alpine .
docker build -t $USERNAME/$IMAGE:1.0-alpine .
docker build -t $USERNAME/$IMAGE:1-alpine .
