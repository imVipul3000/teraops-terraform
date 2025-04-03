module "nat" {
  source = "../modules/networking/nat"
  subnet_public_1 = module.subnet.public_1
  environment = var.environment
}