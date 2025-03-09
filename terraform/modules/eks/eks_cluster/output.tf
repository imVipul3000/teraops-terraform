output "cluster_name" {
  value = aws_eks_cluster.EKS.id
}

output "certurl" {
  value = aws_eks_cluster.EKS.identity[0].oidc[0].issuer
}