module "nat" {
  source = "../../common/networking/nat"
  subnet_public_us_east_1a = module.subnet.public_us_east_1a
  environment = var.environment
}