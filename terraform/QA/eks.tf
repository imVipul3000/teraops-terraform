module "eks" {
  source = "../modules/eks/eks_cluster"
  environment = var.environment
  eks_version = 1.32
  subnet_private_1 = module.subnet.private_1
  subnet_private_2 = module.subnet.private_2
  subnet_public_1 = module.subnet.public_1
  subnet_public_2 = module.subnet.public_2
  eks_cluster_name = "latitude-eks-staging-sandbox"
}
