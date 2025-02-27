resource "aws_vpc" "main" {
  cidr_block = var.cidr

  tags = {
    name = "dev_vpc"
  }
}

resource "aws_subnet" "main_subnet" {
  cidr_block = var.sub_cidr
  vpc_id     = aws_vpc.main.id

  tags = {
    name = "dev_subnet"
  }
}

output "subnet_id" {
  value = aws_vpc.main.id
}