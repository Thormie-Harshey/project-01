resource "aws_instance" "first_EC2" {
  ami           = data.aws_ami.ubuntu_ami.id
  instance_type = var.instance_type["dev"]

  tags = {
    Name = var.instance_name
  }
  user_data = file("${path.module}/ubuntu-data/userdata.sh")
}

# resource "aws_eip" "first_eip" {
#   instance = aws_instance.first_EC2.id
#   domain   = "vpc" //eip should be associated with a VPC
# }

output "ec2_instance_public_IP" {
  value = aws_instance.first_EC2.public_ip
}

# output "elasticIP_public_IP" {
#   value = aws_eip.first_eip.public_ip
# }