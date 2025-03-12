data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Owner is Canonical
  #   NOTE: can change region if needed, below line is seen as best practice to do so
  provider = aws.us_east_1

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "ubuntu_data_us_east_1" {
  value = data.aws_ami.ubuntu.id
}

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
