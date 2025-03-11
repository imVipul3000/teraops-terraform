# 🔹 Create CodeArtifact Domain
resource "aws_codeartifact_domain" "this" {
  domain = var.domain
}

# 🔹 Create CodeArtifact Repository
resource "aws_codeartifact_repository" "this" {
  repository = var.repository
  domain     = var.domain
  # ✅ Correct way to define external connections
  external_connections {
    external_connection_name = "public:npmjs"
  }
}