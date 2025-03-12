terraform {
  required_version = "~> 1.11"

  backend "s3" {
    bucket         = "teraops-terraform-poc"
    key            = "QA/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.30"  # Adjust based on stability
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

variable "environment" {
  default = "qa"
}