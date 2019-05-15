#!/bin/sh

REL_VERSION="Latest"
echo "Building Wordpress docker images - version:${REL_VERSION}"
docker build -t wordpress-server:${REL_VERSION} -f Dockerfile_wordpress .
docker pull mysql:5.7
docker push nagaraj1171/wordpress:${REL_VERSION}