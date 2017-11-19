#! /bin/bash

eb init --profile <YOUR AWS PROFILE NAME>

# create elastic-beanstalk environment (?)
eb create <YOUR ENVIRONMENT NAME> --profile <YOUR AWS PROFILE NAME> -i t2.small -p "multi-container-docker-1.11.2-(generic)" -s -k <YOUR AWS KEYPAIR NAME> --envvars "NODE_ENV=localdev,SKIP_PASSPORT=true,SKIP_UPLOAD=true,SKIP_OG=true"  

# update elastic-beanstalk app with newly-created image from ECR
eb deploy
