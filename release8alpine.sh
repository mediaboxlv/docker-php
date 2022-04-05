set -ex
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=rolandinsh
# image name
IMAGE=php
# ensure we're up to date
# git pull
# bump version
version=`cat version8alpine`
echo "version: $version"

# run build
./build8.sh

# tag it
docker tag $USERNAME/$IMAGE:latest8-alpine $USERNAME/$IMAGE:$version

# push it
docker push $USERNAME/$IMAGE:latest8-alpine
docker push $USERNAME/$IMAGE:$version
docker push $USERNAME/$IMAGE:2.8.0-alpine
docker push $USERNAME/$IMAGE:2.8-alpine