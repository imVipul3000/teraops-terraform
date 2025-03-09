output "subnet_private_1_id" {
  value = aws_subnet.private_eu_west_2a.id
}

output "subnet_public_1_id" {
  value = aws_subnet.public_eu_west_2a.id
}
