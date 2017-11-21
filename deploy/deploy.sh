#! /bin/bash

set -x

# build docker image
docker build -t dockertest .

# output contains the docker login command, send it to bash to execute
aws ecr get-login --no-include-email | bash

# tag our docker image
docker tag dockertest:latest 903455642405.dkr.ecr.us-west-2.amazonaws.com/dockertest:latest

# push docker image to AWS ECS repo
docker push 903455642405.dkr.ecr.us-west-2.amazonaws.com/dockertest:latest

# rename Dockerfile so it is not used to create env on remote instance
mv ./Dockerfile ./Dockerfile.local

# update elastic-beanstalk app with newly-created image from ECR
eb deploy
