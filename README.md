# Foundry VTT on AWS Elastic Beanstalk

**WORK IN PROGRESS**

This repository contains the necessary infrastructure-as-code files and pipelines to deploy [Foundry Virtual Tabletop](https://github.com/felddy/foundryvtt-docker) to Elastic Beanstalk. The goal is to provide reproducible environments, understandable files for those new to AWS, and inexpensive deployments. 

# Running locally
Running locally can help catch some errors before deployment. 

1. Clone the repo
1. [Install Docker](https://docs.docker.com/get-docker/)
1. [Install the EB CLI](https://github.com/aws/aws-elastic-beanstalk-cli-setup)
1. Run `eb init` and input your AWS credentials and select the EB environment
1. Run `eb local run --envvars FOUNDRY_USERNAME=<>,FOUNDRY_PASSWORD=<>,FOUNDRY_ADMIN_KEY=<>` with the appropriate values

## Anticipated FAQ
Feel free to use [GitHub Discussions](https://github.com/aspearman/foundry-aws-beanstalk/discussions) to ask questions or for help.

### Why Elastic Beanstalk?
First, AWS is cheap and has a reasonably generous free tier. 

Secondly, you might be wondering why not ECS or CloudFormation or some other technology. I found those to be overkill for this deployment and would present a high bar to entry for those making their first deployment to AWS. Furthermore, Elastic Beanstalk appears to be CloudFormation in disguise, but with many sensible defaults. This has two benefits: 1) we can rely on the sensible defaults for most of our values, while declaring in code (IAC) what the configuration should be since all it is doing is overriding the CloudFormation configuration, leading to easily reproducible environments, and 2) with sensible defaults, the only code needed in this repo is anything that differs from the sensible defaults, which isn't much, leading to this repo being easier to understand for newcomers. 

I also wanted to learn more about AWS and this was one way to do that. 
