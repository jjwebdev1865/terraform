# IaC

## introduction
- Infrastructure as Code(IaC) => Provisioning and managing infrastructure through code instead of manually
- Downfalls of manual resource creation
    * hard to reproduce large infrastructures
    * lots of duplication and repeditive steps
    * hard to track and revert changes
    * imperative rather than declarative
    * VERY ERROR PRONE!!!!

- Benefits of IaC
    * code is declarative 
    * code is taken as a input through a IaC tool and the tool applies the modifications for users
    * easier to reproduce for large infrastructures

## Benefits
- better cost management
    * resources, environments, and infrastructures can easily be created and destroyed
    * frees up developer time due to automation
- improved reliability
    * consistent behavior 
    * validate configuration as part of deployment process
- improved consistency and scalability
- improved deployment process
    * resource creation, updates, and destruction becomes integrated with CI/CD tasks
- fewer human errors
- improved security strategies
- self documenting infrastructure

## Exercise - creating infrastructure manually in AWS
- Free version. follow these directions: 
    * https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise01-benefits_iac_aws_console.md 
- he did the walk through and i just skipped. followed the directions correctly

## Exercise - creating infrastructure with terraform
- Free version: follow these directions
    * https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise02-terraform.md
    * had to watch this cause i didnt know where to start
    * example is found in folder "01-benefits-iac"
    * NOTE: did not deploy. was just an example to show foundations!

## Why Terraform?
- platform agnostic
    * can be used across multiple providers (AWS or Azure) and both on prem and cloud env
- high level abstraction
- modular approach
- parallel deployment
    * supports sequential and parallel changes
- state files 


## Terraform Architecture
- core component -> provider -> remove APIs
- provider:
    * allows terraform core to work with remote API
    * ex: AWS, google cloud, azure

## Stages of Provisioning Infrastructure
- first stage: Plan
    * This tells terraform what the intentions are without applying anything to the state of terraform
- second stage: Apply
    * implements the plan into state, changing the known configs to what is now the new state
    * can directly run apply without running plan. without plan, apply will also run plan along
- third stage: Destroy
    * destroys whole infrastructure in state. 

## Exercise: Exploring terraform stages - Overview
- free exercise - found at:
    * https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise03-terraform_stages.md
    * shows how to init, plan, apply, and destroy infrastructure using terraform