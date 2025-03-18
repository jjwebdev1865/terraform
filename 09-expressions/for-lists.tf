locals {
  # The below is iterating over a list to create a list ([] show return a list)
  double_numbers = [for num in var.numbers_list : num * 2]
  # Below is iterating over a list while checking it meets certain conditions. also returns a list
  even_numbers = [for num in var.numbers_list : num if num % 2 == 0]
  # iterating over a map and getting just one value
  first_names = [for person in var.objects_list : person.firstname]

  full_names = [for person in var.objects_list : "${person.firstname} ${person.lastname}"]
}

output "double_numbers" {
  value = local.double_numbers
}

output "even_numbers" {
  value = local.even_numbers
}

output "first_names" {
  value = local.first_names
}

output "full_names" {
  value = local.full_names
}