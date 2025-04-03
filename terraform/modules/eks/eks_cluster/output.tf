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

output "cluster_endpoint" {
  description = "The endpoint of the EKS cluster"
  value       = aws_eks_cluster.EKS.endpoint
}

output "cluster_certificate_authority_data" {
  description = "The certificate authority data for EKS cluster"
  value       = aws_eks_cluster.EKS.certificate_authority[0].data
}