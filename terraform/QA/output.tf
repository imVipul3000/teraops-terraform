output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_private_1_id" {
  value = module.subnet.private_us_east_1a
}

output "subnet_private_2_id" {
  value = module.subnet.private_us_east_1b
}

output "subnet_public_1_id" {
  value = module.subnet.public_us_east_1a
}

output "subnet_public_2_id" {
  value = module.subnet.public_us_east_1b
}

output "ig_id" {
    value = module.ig.ig
}

output "nat_id" {
    value = module.nat.nat
}

output "route_public_id" {
    value = module.routes.aws_route_table_public
}

output "route_private_id" {
    value = module.routes.aws_route_table_private
}
