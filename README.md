# Foundry VTT on AWS Elastic Beanstalk

**WORK IN PROGRESS**

This repository contains the necessary infrastructure-as-code files and pipelines to deploy [Foundry Virtual Tabletop](https://github.com/felddy/foundryvtt-docker) to Elastic Beanstalk using Docker compose. 

## Running locally
Running locally can help catch some errors before deployment. 

1. Clone the repo
1. [Install Docker](https://docs.docker.com/get-docker/)
1. [Install the EB CLI](https://github.com/aws/aws-elastic-beanstalk-cli-setup)
1. Run `eb init` and input your AWS credentials and select the EB environment
1. Run `eb local run --envvars FOUNDRY_USERNAME=<>,FOUNDRY_PASSWORD=<>,FOUNDRY_ADMIN_KEY=<>` with the appropriate values
