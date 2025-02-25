terraform {
  required_version = "~> 1.0"
  required_providers {
    # Whatever should be aws because its for the provider to recognize the resource enabler
    # whatever = {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

# NOTE: The name references the required_providers block
# provider "whatever" {
provider "aws" {
    region = "us-east-2"
}

# Can have multiple providers for different regions
provider "aws" {
    region = "us-east-1"
    # Lets us reference the different provider
    alias = "us-east"
}

resource "aws_s3_bucket" "us_east_2" {
  bucket = "some-random-bucket-name-jadkslfjakljf"
}

resource "aws_s3_bucket" "us_east_1" {
  bucket = "some-random-bucket-name-dfgsfgffdfg"
#   Connects to the provider with the alias
  provider = aws.us-east
}