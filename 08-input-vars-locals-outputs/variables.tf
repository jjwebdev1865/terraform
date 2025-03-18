variable "ec2_instance_type" {
  type = string
  #   default     = "t2.micro" // moved to .tfvars
  description = "The type of managed ec2 instances"

  validation {
    condition = contains(["t2.micro", "t3.micro"], var.ec2_instance_type)
    # condition = startswith(var.ec2_instance_type, "t3")
    error_message = "Only supports t2.micro and t3.micro"
  }
}

variable "additional_tags" {
  type    = map(string)
  default = {} // move to .tfVars
}

# Note: Object example
variable "ec2_volume_config" {
  type = object({
    size = number
    type = string
  })
  description = "The size and type of the root block volume for the EC2 instance"
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