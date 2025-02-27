resource "aws_instance" "test-ec2" {
  ami           = data.aws_ami.rhel_ami.id
  for_each =      toset(var.instances)
  instance_type = lookup(var.instance_type, each.key, "t2.micro")
  tags = {
    Name = each.key
  }
}