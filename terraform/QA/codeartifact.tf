module "codeartifact" {
    source = "../modules/codeartifact"
    domain = "teraops-poc-domain"
    repository = "teraops-poc-repository"
}