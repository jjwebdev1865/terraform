subnet_count = 3

# NOTE: commented out when starting the list work
# ec2_instance_count = 1
ec2_instance_count = 0

ec2_instance_config_list = [{
  instance_type = "t2.micro",
  ami           = "ubuntu"
  },
  {
    instance_type = "t2.micro",
    ami           = "nginx"
}]