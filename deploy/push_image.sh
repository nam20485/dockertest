#! /bin/bash

set -x

docker build -t dockertest .

# output contains the docker login command, send it to bash to execute
aws ecr get-login --no-include-email | bash

docker tag dockertest:latest 903455642405.dkr.ecr.us-west-2.amazonaws.com/dockertest:latest

docker push 903455642405.dkr.ecr.us-west-2.amazonaws.com/dockertest:latest
