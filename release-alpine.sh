set -ex
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=rolandinsh

# image name
IMAGE=php

# bump version
version=`cat version`
echo "version: $version"
# run build
./build.sh

# tag it
docker tag $USERNAME/$IMAGE:latest-alpine $USERNAME/$IMAGE:$version

# push it
docker push $USERNAME/$IMAGE:latest-alpine
docker push $USERNAME/$IMAGE:$version-alpine
docker push $USERNAME/$IMAGE:1.0-alpine
docker push $USERNAME/$IMAGE:1-alpine