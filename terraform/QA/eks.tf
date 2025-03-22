module "eks" {
  source = "../modules/eks/eks_cluster"
  environment = var.environment
  subnet_private_us_east_1a = module.subnet.private_us_east_1a
  subnet_private_us_east_1b = module.subnet.private_us_east_1b
  subnet_public_us_east_1a = module.subnet.public_us_east_1a
  subnet_public_us_east_1b = module.subnet.public_us_east_1b
  eks_cluster_name = "teraops-terraform-pooc"
}
