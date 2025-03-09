terraform {
  required_version = "~> 1.11"

  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "QA/VPC/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.30"  # Adjust based on stability
    }
  }
}
