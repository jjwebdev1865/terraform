terraform {
  required_version = "~> 1.10.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    #manually created s3 bucket
    bucket = "terraform-course-jj-remote-backend"
    # pushes state to the desired bucket output
    key    = "04-backends/state.tfstate"
    region = "us-east-2"
  }
}


provider "aws" {
  region = "us-east-2"
}