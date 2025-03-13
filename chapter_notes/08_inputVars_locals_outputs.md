# Input Variables, Locals, and Outputs

## Key Notes
- Input Variables => Customize values based on variables to create reuseable and composable code
- NOTE: Best practive for input variables is to declare them in a *variables.tf* file
- Best practice, for input variables, is to ALWAYS provide a type

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
