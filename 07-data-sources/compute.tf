data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Owner is Canonical
  #   NOTE: can change region if needed, below line is seen as best practice to do so
  #   provider = aws.us_east_1

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Note: check this out in the terraform registry to see how to use
data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# data "aws_vpc" "prod_vpc" {
#   tags = {
#     Env = "Prod" // NOTE: passing invalid vpc leads to =>  Error: no matching EC2 VPC found
#   }
# }

data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_iam_policy_document" "static_website" {
  statement {
    sid = "PublicReadGetObject"
    principals {
      type        = "*"
      identifiers = ["*"]
    }

    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.public_read_bucket.arn}/*"]
  }
}

resource "aws_s3_bucket" "public_read_bucket" {
  bucket = "my-public-read-bucket"
}

output "ubuntu_data_us_east_1" {
  value = data.aws_ami.ubuntu.id
}

output "aws_caller_identity" {
  value = data.aws_caller_identity.current
}

output "aws_region" {
  value = data.aws_region.current
}

output "az" {
  value = data.aws_availability_zones.available.id
}

# output "prod_vpc_id" {
#   value = data.aws_vpc.prod_vpc.id
# }

# Comment this when not in using. this is an resource that charges if left running
# Confirm delete at the end of chapter
resource "aws_instance" "web" {
  ami                         = data.aws_ami.ubuntu.id
  associate_public_ip_address = true
  instance_type               = "t2.micro"
  root_block_device {
    delete_on_termination = true
    volume_size           = 10 // in GB
    volume_type           = "gp3"
  }
}
