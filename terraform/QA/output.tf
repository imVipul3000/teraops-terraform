output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_private_1_id" {
  value = module.subnet.subnet_private_1_id
}

output "subnet_public_1_id" {
  value = module.subnet.subnet_public_1_id
}

