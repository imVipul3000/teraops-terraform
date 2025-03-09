module "routes" {
  source = "../modules/networking/routes"
  subnet_private_us_east_1a = module.subnet.private_us_east_1a
  subnet_private_us_east_1b = module.subnet.private_us_east_1b
  subnet_public_us_east_1a = module.subnet.public_us_east_1a
  subnet_public_us_east_1b = module.subnet.public_us_east_1b
  vpc_id = module.vpc.vpc_id
  nat_id = module.nat.nat
  ig_id  = module.ig.ig
  environment = var.environment
}