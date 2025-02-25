# Terraform Building Blocks

## Exercise - Hashicorp configuration language (HCL) - Overview
- Exercise: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise04-hcl.md 
- watched the recording due to confusion on directions and outputs
- exercise done in directory '02-hcl'
- notes:
  * when creating a resource.
    - type goes first
    - unique label goes second
  * each resouce has different attributes. 
    - a s3 bucket and a vpc will have different resources
  * look at "data" property in example

## Terraform Configuration
- blocks
  * used for project configuration
  * only constants are allowe in terraform blocks
  * version constraints - google these, powerful for setting requirements

## Exercise - Our first Terraform project - overview
  - exercise found at: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise05-first_tf_project.md
  - example found at: 03-first-tf-project

## Exercise - Working with Terraform CLI
- here is a list of short commands to run with terraform CLI
  * https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise06-terraform_cli.md
  * can pass a ' - auto-approve' which skips the confirmation step

## Terraform State
- maps resources from our config files to real-world objects
- state is ALWAYS required in terraform
- NOTE: state may contain sensative data, be careful who has access
- state locking
  * locks state file and prevents concurrent modifications

## Backends in Terraform
- Backends define where terraform stores its state file.
  * Primary source of truth
  * should be stored properly. need secure access
  * 3 backend categories:
    - local
    - terraform cloud
    - 3rd party backends (like S3)

## Exercise - Setting up a remote S3 Backend - Overview
- example is 04-backends

## Exercise - Partial Backend configuration
- example is 04-backends
  * added dev.s3.backend file
  * added prod.s3.backend file
  * used command 'terraform init -backend-config="dev.s3.tfbackend"'
    - triggers init for dev env only

## Terraform Providers
- how terraform interacts with remote APIs and platforms
- 'terraform version' will show provider versions as well
- Exercise done in 05-providers
- free practice at https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise09-providers.md