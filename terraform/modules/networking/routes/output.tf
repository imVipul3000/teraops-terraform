output "aws_route_table_private" {
  value = aws_route_table.private.id
}
output "aws_route_table_public" {
  value = aws_route_table.public.id
}