set -ex
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=rolandinsh
# image name
IMAGE=php
# ensure we're up to date
# git pull
# bump version
# docker run --rm -v "$PWD":/app rolandinsh/bump patch
version=`cat version`
echo "version: $version"
# run build
./build.sh
# tag it
# git add -A
# git commit -m "version $version"
# git tag -a "$version" -m "version $version"
# git push
# git push --tags
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version
# push it

docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$version
docker push $USERNAME/$IMAGE:2.7.4
docker push $USERNAME/$IMAGE:2.7