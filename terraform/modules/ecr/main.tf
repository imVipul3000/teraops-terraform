resource "aws_ecr_repository" "my_ecr_repo" {
  name = var.ecr_repo
  image_tag_mutability = "MUTABLE" # You can also set this to "IMMUTABLE" if desired
  image_scanning_configuration {
    scan_on_push = true
  }
}