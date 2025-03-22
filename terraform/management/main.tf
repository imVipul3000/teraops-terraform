terraform {
  required_version = "~> 1.11"

  backend "s3" {
    bucket         = "terraform-poc-teraops-management"
    key            = "management/terraform.tfstate"
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
    }  */
  }
}

variable "environment" {
  default = "management"
}

# Data source to get the existing "TeraOps" group using a filter
data "aws_identitystore_group" "teraops" {
  identity_store_id = var.identity_store_id

  filter {
    attribute_path  = "DisplayName"
    attribute_value = "TeraOps"
  }
}

# Create a new IAM Identity Center user
resource "aws_identitystore_user" "new_user" {
  identity_store_id = var.identity_store_id
  user_name        = "john.doe@example.com" # Change this to the user's email
  display_name     = "John Doe"
  
  emails {
    value    = "john.doe@example.com"
    primary  = true
  }

  name {
    given_name  = "John"
    family_name = "Doe"
  }
}

# Add the user to the "TeraOps" group
resource "aws_identitystore_group_membership" "user_membership" {
  identity_store_id = var.identity_store_id
  group_id          = data.aws_identitystore_group.teraops.id
  member_id         = aws_identitystore_user.new_user.id
}

# Variable for Identity Store ID
variable "identity_store_id" {
  description = "The Identity Store ID for AWS IAM Identity Center"
  type        = string
  default = "d-9067e9808e"
}
