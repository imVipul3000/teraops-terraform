module "eks_nodes" {
  source = "../modules/eks/eks_nodes"
  environment = var.environment
  eks_cluster_name = module.eks.cluster_name
  subnet_private_us_east_1a = module.subnet.private_us_east_1a
  subnet_private_us_east_1b = module.subnet.private_us_east_1b
  node_group_name = "teraops-terraform-poc"
  eks_node_group_instance_type = "t3.medium"
  node_desired_size = "2"
  node_max_size = "2"
  node_min_size = "1"
  node_max_unavailable = "1" 
}