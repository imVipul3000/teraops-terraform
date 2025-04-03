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
    - rolearn: ${module.eks_nodes.node_role_arn}
      username: admin
      groups:
        - system:masters
    - rolearn: ${module.eks_nodes.node_role_arn}
      username: system:node:{{EC2PrivateDNSName}}
      groups:
        - system:bootstrappers
        - system:nodes
        - system:masters
YAML
}
