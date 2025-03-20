subnet_count = 3

# NOTE: commented out when starting the list work
# ec2_instance_count = 1
ec2_instance_count = 0

# NOTE: Commented out when starting to work with maps
# ec2_instance_config_list = [{
#   instance_type = "t2.micro",
#   ami           = "ubuntu"
#   },
#   {
#     instance_type = "t2.micro",
#     ami           = "nginx"
# }]
ec2_instance_config_list = []

ec2_instance_config_map = {
  "ubuntu_1" = {
    instance_type = "t2.micro",
    ami           = "ubuntu"
  },
  "nginx_1" = {
    instance_type = "t2.micro",
    ami           = "nginx"
  }
}