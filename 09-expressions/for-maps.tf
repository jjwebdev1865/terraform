locals {
    # {} is the difference between generating a map and a list. 
    # NOTE: => returns the value associated to the key
  doubles_map = { for key, value in var.numbers_map : key => value * 2 }

  even_map = { for key, value in var.numbers_map : key => value if value % 2 == 0 }
}

output "doubles_map" {
  value = local.doubles_map
}

output "evens_map" {
  value = local.even_map
}