# Comment this when not in using. this is an resource that charges if left running
resource "aws_instance" "web" {
  # Found through the locator => https://cloud-images.ubuntu.com/locator/ec2/
    ami                         = "ami-0c3b809fcf2445b6a" // THis was found using the locator
#   ami                         = "ami-odfee6e7eb44d480b" // sample from video, wont work unless i subscribe to Bitnami. look at README. AMI NGINX
  associate_public_ip_address = true
  instance_type               = "t2.micro" // free 

  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.public_http_traffic.id]
  #   NOTE: Root block devices are not required
  root_block_device {
    delete_on_termination = true
    volume_size           = 10 // in GB
    volume_type           = "gp3"
  }

  tags = merge(local.common_tags, {
    Name = "06-resources-ec2"
  })

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_security_group" "public_http_traffic" {
  description = "Security group allowing traffic on ports 443 and 80"
  name        = "public-http-traffic"
  vpc_id      = aws_vpc.main.id

  tags = merge(local.common_tags, {
    Name = "06-resources-sg"
  })
}

# NOTE: ingress refers to inbound rules that allow incoming traffic over HTTPS protocol
resource "aws_vpc_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.public_http_traffic.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
}

resource "aws_vpc_security_group_ingress_rule" "https" {
  security_group_id = aws_security_group.public_http_traffic.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  to_port           = 443
  ip_protocol       = "tcp"
}