locals {
  name = "Jimbo Ireland"
  age  = 15
  my_object = {
    key1 = 10
    key2 = "my_value"
  }
}

output "example1" {
  value = startswith(lower(local.name), "john") // Note: returns false
}

output "example2" {
  value = pow(local.age, 2) // Note: returns 225
}

output "example3" {
  # NOTE: decodes a yaml file, also uses a splat expression
  value = yamldecode(file("${path.module}/users.yaml")).users[*].name
}

output "example4" {
  value = jsonencode(local.my_object)
}