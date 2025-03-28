# Expressions and Functions

## Key Notes
- when iterating over a map, can return a list or map. and vice versa
- Maps CANNOT have duplicates, to override this, add a (...) at the end of the declaration
- Splat expressions are a more concise way to iterate overs lists. **ONLY LISTS**
    * can iterate over maps and objects using a *values()*

## Exercise 1:  Operators in Terraform
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise22-operators.md
- can do standard math operators

## Exercise 2: Using expressions with lists - overview
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise23-for_lists.md
- check out directory **09-expressions** > for-list.tf
- going over the *for* expression
    * can do conditional checks inside of for expressions

## Exercise 3: Using for expressions with Maps
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise24-for_maps.md
- check out directory **09-expressions** > for-map.tf
    * shows how to change and use a map with the response also being a map

## Exercise 4: Transforming lists into maps and vice versa
- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise25-lists_maps.md
- check out directory **09-expressions** > lists-maps.tf

## Demo: Using Splat Expressions
- check out directory **09-expressions** > splat.tf
- splat expressions are used to shorten iterations
    * only works with lists!

## Introduction to functions
- lot of functions similar to standard coding languages, checkout out the hashicorp documentation for examples

- exercise link: https://github.com/lm-academy/terraform-course/blob/main/exercises/exercise26-functions.md
- check out directory **09-expressions** > functions.tf
- this exercise uses a .yaml file for the first time in the course
    * shows how to utilize the terraform function *yamldecode()* 