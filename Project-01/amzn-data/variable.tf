# variable "ami" {
#   type    = string
#   default = "ami-053a45fff0a704a47"
# }

variable "instance_type" {
  type = map(string)
  default = {
    dev = "t2.micro"
    uat = "t2.medium"
    prod = "t2.large"
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

variable "instances" {
  type = list(string)
  default = [ "dev","uat","prod" ]
}