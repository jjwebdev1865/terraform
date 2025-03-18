locals {
  firstnames_from_splat = var.objects_list[*].firstname
#   Iterating over maps with splat DOES NOT WORK. must convert to a list
  roles_from_splat_with_values = values(local.users_map2)[*].roles
  #NOTE: Above line works cause we are getting a list of the values from the object, no keys
}

output "firstnames_from_splat" {
  value = local.firstnames_from_splat
}