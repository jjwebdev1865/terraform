terraform {
  required_providers {
    aws = "hashicorp/aws"
    version = "5.37.0"
  }
}

# NOTE: first descriptor is the type of resource
# NOTE: second is the label of the resource
# NOTE: Actively managed by our terraform project
resource "aws_s3_bucket" "my_bucket" {
    # bucket = "my-sample-bucket" Can hard code this or use resource
    bucket = var.bucket_name
}

# NOTE: This is used to reference infrastructure not managed by internal user.
# NOTE: Managed somewhere else, we just want to use in our project
data "aws_s3_bucket" "my-external-bucket" {
    bucket = "not-managed-by-us"
}

# NOTE: variables are used to customize our project
# NOTE can be used in other resources
variable "bucket_name" {
    type = string
    description = "my variable used to set bucket name"
    default = "my_default_bucket_name"
}

output "bucket_id" {
  value = local.local_example
}

# NOTE: create temporary variables
# NOTE: used in function body and not returning them
# NOTE: can provide these as outputs. notice reference in output
locals {
  local_example = "This is a local value"
}

# NOTE: Reusable code
module "my_module" {
    # referencing a folder under our current project
    source = "../01-benefits-iac"
}