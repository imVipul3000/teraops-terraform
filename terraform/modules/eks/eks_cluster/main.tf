resource "aws_iam_role" "eks_role" {
  name = "eks-cluster-${var.environment}"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.eks_role.name
}

resource "aws_eks_cluster" "EKS" {
  name     = var.eks_cluster_name
  role_arn = aws_iam_role.eks_role.arn
  version  = "1.32"
  vpc_config {
    endpoint_private_access = true
    endpoint_public_access  = false
    subnet_ids = [
      var.subnet_private_us_west_1a,
      var.subnet_private_us_west_1b,
      var.subnet_public_us_west_1a,
      var.subnet_public_us_west_1b
    ]
  }

  depends_on = [aws_iam_role_policy_attachment.AmazonEKSClusterPolicy]
}