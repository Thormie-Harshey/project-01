provider "aws" {
  region  = "us-east-1"
  profile = "default" //the AWS profile to use for authentication
}

module "ec2_module" {
  source = "./ec2"
}