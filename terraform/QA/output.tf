output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_private_1_id" {
  value = module.subnet.private_us_east_2a
}

output "subnet_private_2_id" {
  value = module.subnet.private_us_east_2b
}

output "subnet_public_1_id" {
  value = module.subnet.public_us_east_2a
}

output "subnet_public_2_id" {
  value = module.subnet.public_us_east_2b
}

output "ig_id" {
    value = module.ig.ig
}
