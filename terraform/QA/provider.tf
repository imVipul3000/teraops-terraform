terraform {
  required_version = "~> 1.11"

  backend "s3" {
    bucket       = "terraform-poc-teraops-qa"
    key          = "staging-sandbox/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.30"  # Adjust based on stability
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.7" # Ensure compatibility with your Terraform version
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.25" # Ensure compatibility
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "kubernetes" {
  host                   = aws_eks_cluster.EKS.endpoint
  token                  = data.aws_eks_cluster_auth.cluster.token
  cluster_ca_certificate = base64decode(aws_eks_cluster.EKS.certificate_authority[0].data)
}

provider "helm" {
  kubernetes {
    host                   = aws_eks_cluster.EKS.endpoint
    token                  = data.aws_eks_cluster_auth.cluster.token
    cluster_ca_certificate = base64decode(aws_eks_cluster.EKS.certificate_authority[0].data)
  }
}

# Fetch authentication details for EKS
data "aws_eks_cluster_auth" "cluster" {
  name = aws_eks_cluster.EKS.name
}
