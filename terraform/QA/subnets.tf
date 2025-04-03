module "subnet" {
  source = "../modules/networking/subnet"
  vpc_id = module.vpc.vpc_id
  subnet_private_1_availability_zone = "us-west-1a"
  subnet_private_2_availability_zone = "us-west-1b"
  subnet_public_1_availability_zone = "us-west-1a"
  subnet_public_2_availability_zone = "us-west-1b"
  subnet_private-1 = "10.1.0.0/18"
  subnet_private-2 = "10.1.64.0/18"
  subnet_public-1 = "10.1.128.0/18"
  subnet_public-2 = "10.1.192.0/18"
  environment = var.environment
}