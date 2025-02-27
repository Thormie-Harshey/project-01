resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    name = "dev_vpc"
  }
}

resource "aws_subnet" "main_subnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id     = aws_vpc.main.id

  tags = {
    name = "dev_subnet"
  }
}

output "subnet_id" {
  value = aws_vpc.main.id
}