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


resource "aws_instance" "from_count" {
  count         = var.ec2_instance_count
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
#   NOTE: this is a way to distribute subnets over vast amounts of instances
  subnet_id = aws_subnet.main[count.index % length(aws_subnet.main)].id

  tags = {
    Name    = "${local.project}-${count.index}"
    Project = local.project
  }
}
