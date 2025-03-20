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

## Exercise 3: Creating EC2 instances based on List var
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise29-multiple_ec2_list_input.md
- check out directory **10-multiple-resources**
- in resource creation, with a list of objects, for_each wont work, need to use count still
    * checkout out compute.tf > from_list var

## Exercise 4: Allowing Multiple AMIs in the ec2 config variable
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise30-allow_nginx_image.md
- check out directory **10-multiple-resources**

## Exercise 5: Adding Validation to the List Var
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise31-validation_list_input.md
- validation example is in variables.tf
    * use of validation and *alltrue()* function new. very powerful because it checks for true false

## Exercise 6: Creating ec2 instances using Map variables && Validation
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise32-multiple_ec2_map_input.md
- first instance of the for_each used. 
    * so utilization of the _each_ var
- validation also done here. had to use _values_ to iterate over the map

## Exercise 7: Extending the config to receive subnet information
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise34-provide_subnet_information.md
- too many changse to dir so just watched changes
- use can() to turn conditions into boolean validation