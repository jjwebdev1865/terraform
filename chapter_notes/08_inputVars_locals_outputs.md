# Input Variables, Locals, and Outputs

## Key Notes
- Input Variables => Customize values based on variables to create reuseable and composable code
- NOTE: Best practive for input variables is to declare them in a *variables.tf* file
- Best practice, for input variables, is to ALWAYS provide a type
- checkout examples of terraform.tfvars to see how different environments are set up
    * can pass in to terminal command _var-file_ to pass the chose tfvars to pass to the apply

## Exercise: Declaring and Using Input Variables
- GOAL: to receive aws region
- check out directory **08-inputVars_locals_outputs** > variables.tf to see data example

## Exercise 2: Typing and Validating Input variables
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise15-ec2_instance_size_volume.md
- check out directory **08-inputVars_locals_outputs** > variables.tf to see data example
- notice the _default value_, _descriptions_, and _validations_ that are applied in variables.tf
- NOTE: here on apply and plan, have to pass variables into the console

## Exercise 3: Map and Object Variables
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise16-objects_volume_configuration.md
- check out directory **08-inputVars_locals_outputs** 
- make sure to know when to use maps vs objects.
    * objects seem better in my opinion
- can nest objects in maps as well

## Exercise 4: Working with .tfvars files
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise17-tfvars.md
- check out directory **08-inputVars_locals_outputs** 

## Exercise 5: working with auto.tfvars
- terraform will recognize a *.-auto.tfvars file and apply it to setup
- if multiple .auto files, based on the ordering system in the directory (alphabetical)

## Demo: Variable Precedence Order
- with variable conditionals, check out the function *startswith()* to prefix a condition
    * ex: condition = *startswith(var.ec2_instance_type, "t3")*
- .auto.tfvar files override tfvars files and env variables
    * check how to override base on desired outcome. script options can change precedence

## Exercise 6: Working with Locals - overview
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise19-locals.md
- NOTE: no imports needed between files in terraform
    * locals can be passed between files