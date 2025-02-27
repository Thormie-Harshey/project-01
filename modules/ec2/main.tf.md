module "ec2" {
  source = "../modules/ec2"

  # Pass subnet_id to the EC2 module
  subnet_id = module.vpc.subnet_id
}
