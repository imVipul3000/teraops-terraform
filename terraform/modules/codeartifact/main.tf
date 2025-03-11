# 🔹 Create CodeArtifact Domain
resource "aws_codeartifact_domain" "this" {
  domain = var.domain
}

# 🔹 Create CodeArtifact Repository
resource "aws_codeartifact_repository" "this" {
  repository = var.repository
  domain     = var.domain

  external_connections = ["public:npmjs"] # Allows fetching from npmjs.com
}