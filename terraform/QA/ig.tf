module "ig" {
  source = "../modules/networking/internet_gateway"
  vpc_id = module.vpc.vpc_id
  environment = var.environment
}