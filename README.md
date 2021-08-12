# Foundry VTT on AWS Elastic Beanstalk
This repository contains the necessary infrastructure-as-code files and pipelines to deploy [Foundry Virtual Tabletop](https://github.com/felddy/foundryvtt-docker) to Elastic Beanstalk. 

## Project Status
**🏗️ WORK IN PROGRESS 🏗️**

In its current state, forking this repo and setting env vars in GitHub Environments lets you deploy the container to EB, 
but with no persistent file storage or secure public URL. 

## Running locally
Running locally can help catch some errors before deployment. 

1. Clone the repo
1. [Install Docker](https://docs.docker.com/get-docker/)
1. [Install the EB CLI](https://github.com/aws/aws-elastic-beanstalk-cli-setup)
1. Run `eb init` and input your AWS credentials and select the EB environment
1. Run `eb local run --envvars FOUNDRY_USERNAME=<>,FOUNDRY_PASSWORD=<>,FOUNDRY_ADMIN_KEY=<>` with the appropriate values
