module "codeartifact" {
    source = "../modules/networking/codeartifact"
    domain = "teraops-poc-domain"
    repository = "teraops-poc-repository"
}