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

data "aws_ami" "nginx" {
  most_recent = true

  filter {
    name   = "name"
    values = ["bitnami-nginx-1.25.4-*-linux-debian-12-x86_64-hvm-ebs-*"]
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

resource "aws_instance" "from_list" {
  count         = length(var.ec2_instance_config_list)
  ami           = local.ami_ids[var.ec2_instance_config_list[count.index].ami]
  instance_type = var.ec2_instance_config_list[count.index].instance_type
  subnet_id = aws_subnet.main[
    count.index % length(aws_subnet.main)
  ].id

  tags = {
    Name    = "${local.project}-${count.index}"
    Project = local.project
  }
}

resource "aws_instance" "from_map" {
  for_each      = var.ec2_instance_config_map
  ami           = local.ami_ids[each.value.ami]
  instance_type = each.value.instance_type
  subnet_id     = aws_subnet.main[0].id

  tags = {
    Name    = "${local.project}-${each.key}"
    Project = local.project
  }
}