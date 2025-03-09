module "eks" {
  source = "../terraform/modules/eks/eks_cluster"
  environment = var.environment
  subnet_private_eu_west_2a = module.subnet.private_eu_west_2a
  subnet_private_eu_west_2b = module.subnet.private_eu_west_2b
  subnet_public_eu_west_2a = module.subnet.public_eu_west_2a
  subnet_public_eu_west_2b = module.subnet.public_eu_west_2b
  eks_cluster_name = var.eks_cluster_name
}