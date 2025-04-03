output "cluster_name" {
  value = aws_eks_cluster.EKS.id
}

output "certurl" {
  value = aws_eks_cluster.EKS.identity[0].oidc[0].issuer
}

output "cluster_name1" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.EKS.name
}