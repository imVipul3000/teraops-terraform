module "eks_oidc" {
  source = "../../eks/eks_oidc"
  certurl = module.eks.certurl
}