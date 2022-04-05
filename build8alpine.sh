set -ex
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=rolandinsh
# image name
IMAGE=php
docker build -t $USERNAME/$IMAGE:latest8-alpine -f alpine.Dockerfile .
docker build -t $USERNAME/$IMAGE:2.8.0.17-alpine -f alpine.Dockerfile .
docker build -t $USERNAME/$IMAGE:2.8.0-alpine -f alpine.Dockerfile .
docker build -t $USERNAME/$IMAGE:2.8-alpine -f alpine.Dockerfile .
