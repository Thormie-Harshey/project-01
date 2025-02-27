# variable "ami" {
#   type    = string
#   default = "ami-053a45fff0a704a47"
# }

variable "instance_type" {
  type = map(any)
  default = {
    dev = "t2.micro"
    uat = "t2.medium"
  }
}

variable "instance_name" {
  type    = string
  default = "example"
}

variable "aws_vpc" {
  type    = string
  default = "example_vpc"
}