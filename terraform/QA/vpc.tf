module "vpc" {
  source = "../modules/networking/vpc"
  vpc_cidr_block = "10.1.0.0/16"
  environment = var.environment
}