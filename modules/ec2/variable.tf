variable "instance_type" {
  type = map(any)
  default = {
    dev = "t2.micro"
    uat = "t2.medium"
  }
}

variable "subnet_id" {
  type    = string
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