resource "aws_instance" "first_EC2" {
  ami           = data.aws_ami.ubuntu_ami.id
  instance_type = var.instance_type["dev"]
  subnet_id     = var.vpc.subnet_id

  tags = {
    Name = local.name
  }
}

