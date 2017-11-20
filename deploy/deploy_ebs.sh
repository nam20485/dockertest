#! /bin/bash

#eb init --profile <YOUR AWS PROFILE NAME>

# create elastic-beanstalk environment (?)
#eb create <YOUR ENVIRONMENT NAME> --profile <YOUR AWS PROFILE NAME> -i t2.small -p "multi-container-d3ocker-1.11.2-(generic)" -s -k <YOUR AWS KEYPAIR NAME>

# update elastic-beanstalk app with newly-created image from ECR
eb deploy
