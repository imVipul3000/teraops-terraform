resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  tags = {
          "Name" = "EKS_teraops_VPC-${var.environment}"
        }
}