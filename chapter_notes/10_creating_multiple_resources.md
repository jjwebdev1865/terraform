# Creating Multiple Resources

## Key Notes

## Working with count and for_each
- avoid duplication by using iteration arguments
- count:
    * used to define the number of instances of a specific resource Terraform should create
    * to access specific count resources, <TYPE>.<LABEL>[<INDEX>]
- for_each:
    * accepts a map or a set and creates a instance for each entry in the received expression
    * NOTE: DO NOT USE SENSITIVE INFO
    * can nest for_each expressions

## Exercise 1: Creating multiple subnets with the COUNT arg
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise27-creating_count.md
- check out directory **10-multiple-resources** > networking.tf

## Exercise 2: Referencing Resources with the count arg
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise28-referencing_count.md
- check out directory **10-multiple-resources**
- shared 'locals' should be in own file. single use can stay in the use case file
- in the compute.tf, checkout a way for distributing subnets over instances in a random distribution effort