provider "aws" {
  region  = "us-east-1"
  profile = "default" //the AWS profile to use for authentication
}

provider "aws" {
  region = "us-east-2"
  alias = "east"
}