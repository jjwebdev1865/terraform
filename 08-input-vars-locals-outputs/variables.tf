variable "ec2_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The type of managed ec2 instances"

  validation {
    condition = contains(["t2.micro", "t3.micro"], var.ec2_instance_type)
    # Below line is one way to do it. the above line is better and makes code more legible
    # condition = var.ec2_instance_type == "t2.micro" || var.ec2_instance_type == "t3.micro"
    error_message = "Only supports t2.micro and t3.micro"
  }
}

variable "additional_tags" {
  type = map(string)
  default = {}
}

# Note: Object example
variable "ec2_volume_config" {
  type = object({
    size = number
    type = string
  })
  description = "The size and type of the root block volume for the EC2 instance"

  default = {
    size = 10
    type = "gp3"
  }
}

# Note: Map example
# variable "ec2_volume_config" {
#   type = map(string)
#   description = "The size and type of the root block volume for the EC2 instance"

#   default = {
#     size = 10
#     type = "gp3"
#   }
# }