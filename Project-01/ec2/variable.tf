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
  default = "dev_vpc"
}

variable "aws_vpc" {
  type    = string
  default = "dev_vpc"
}

variable "aws_subnet" {
  type    = string
  default = "dev_subnet"
}

variable "app_name" {
  type    = string
  default = "jenkins"
}

variable "team" {
  type    = string
  default = "HR"
}

variable "env" {
  type    = string
  default = "dev"
}

locals {
  name = "${var.app_name}-${var.team}-${var.env}"
}