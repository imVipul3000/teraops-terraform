module "vpc" {
  source = "../modules/networking/vpc"
  vpc_cidr_block = "10.0.0.1/16"
  environment = var.environment
}