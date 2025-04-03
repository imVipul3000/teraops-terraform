resource "kubectl_manifest" "aws_auth_configmap" {
  depends_on = [aws_eks_node_group.private-nodes]

  yaml_body = <<YAML
apiVersion: v1
kind: ConfigMap
metadata:
  name: aws-auth
  namespace: kube-system
data:
  mapRoles: |
    - rolearn: ${aws_iam_role.eks_role.arn}
      username: admin
      groups:
        - system:masters
    - rolearn: ${aws_iam_role.nodes.arn}
      username: system:node:{{EC2PrivateDNSName}}
      groups:
        - system:bootstrappers
        - system:nodes
YAML
}
