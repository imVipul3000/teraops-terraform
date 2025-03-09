module "vpc" {
  source = "../../common/networking/vpc"
  vpc_cidr_block = "10.0.0.1"
  environment = var.environment
}