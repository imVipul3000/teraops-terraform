module "subnet" {
  source = "../modules/networking/subnet"
  vpc_id = module.vpc.vpc_id
  subnet_private_1_availability_zone = "us-east-2a"
  subnet_public_1_availability_zone = "us-east-2a"
  subnet_private-1 = "10.1.0.0/18"
  subnet_public-1 = "10.1.64.0/18"
  environment = var.environment
}