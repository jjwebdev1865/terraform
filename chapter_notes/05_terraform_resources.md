# Resources

## Introduction
- Resources => resources are used to configure real-world infrastructure objects
- most important blocks within terraform
- combination of resource type and resource name MUST BE UNIQUE

## Resource Dependencies
- can create resource in parallel and sequentially. These resouces can unrelated.
    * NOTE: if a resource is dependent on another, must be created sequentially.
- can use "depends_on" argument
- a parent resource can be replaced if a child resource is modified using the "replace_triggered_by" argument

## Meta Arguments
- "count" and "foreach" are for iterating over lists of resources that are the same type
- business critical resources should have hte "prevent_destroy" set to true.
    * this will exit with an error and not delete

## VPC and EC2 Project
- TODO: run at home and confirm this works
- project overview here at: https://github.com/lm-academy/terraform-course/blob/main/projects/proj00-vpc-ec2.md
    * project done in 06-resources
    * check out the read me to go over step by step process of the sample project
- Key Notes:
    * Tags are powerful for showing resource specific content
    * terraform merge() allows for merging of a defined object and additonal object (example below)
        tags = merge(local.common_tags, {
            Name      = "06-resources"
        })
    * ec2 instance launched in 'compute.tf' file that shows how to set up a aws_instance