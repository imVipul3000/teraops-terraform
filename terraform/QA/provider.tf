terraform {
  required_version = "~> 1.11"

  backend "s3" {
    bucket         = "terraform-poc-teraops-qa"
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
   /* cloudflare = {
      source  = "cloudflare/cloudflare"  # Correct source
      version = "~> 4.0"  # Use the latest compatible version
    } */
  }
}

variable "environment" {
  default = "qa"
}
