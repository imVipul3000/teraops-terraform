module "routes" {
  source = "../modules/networking/routes"
  subnet_private_1 = module.subnet.private_1
  subnet_private_2 = module.subnet.private_2
  subnet_public_1 = module.subnet.public_1
  subnet_public_2 = module.subnet.public_2
  vpc_id = module.vpc.vpc_id
  nat_id = module.nat.nat
  ig_id  = module.ig.ig
  environment = var.environment
}