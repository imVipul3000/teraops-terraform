module "eks_nodes" {
  source = "../modules/eks/eks_nodegroup"
  environment = var.environment
  eks_cluster_name = module.eks.cluster_name
  subnet_private_1 = module.subnet.private_1
  subnet_private_2 = module.subnet.private_2
  node_group_name = "latitude-nodegroup-staging-sandbox"
  eks_node_group_instance_type = ["t3.medium"]
  node_desired_size = "2"
  node_max_size = "2"
  node_min_size = "1"
  node_max_unavailable = "1" 
}