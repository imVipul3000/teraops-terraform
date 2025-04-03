output "node_group_name" {
  description = "The name of the EKS node group"
  value       = aws_eks_node_group.private-nodes.id
}

output "node_role_arn" {
  description = "IAM role ARN of the EKS node group"
  value       = aws_iam_role.eks_node_role.arn
}
