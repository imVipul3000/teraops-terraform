module "vpc" {
  source = "../modules/vpc"

  vpc_cidr       = "10.0.0.0/16"
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones = ["eu-west-1a", "eu-west-1b"]
  vpc_name       = "qa-vpc"
  environment    = "qa"
}
