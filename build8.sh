set -ex
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=rolandinsh
# image name
IMAGE=php
docker build -t $USERNAME/$IMAGE:latest8 -f php8.Dockerfile .
docker build -t $USERNAME/$IMAGE:2.8.0.16 -f php8.Dockerfile .
docker build -t $USERNAME/$IMAGE:2.8.0 -f php8.Dockerfile .
docker build -t $USERNAME/$IMAGE:2.8 -f php8.Dockerfile .
