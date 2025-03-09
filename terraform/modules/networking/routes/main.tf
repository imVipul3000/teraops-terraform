resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = var.nat_id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "private-teraops-${var.environment}"
  }
}

resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = var.ig_id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "public-teraops-${var.environment}"
  }
}

resource "aws_route_table_association" "private-us-east-1a" {
  subnet_id      = var.subnet_private_us_east_1a
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private-us-east-1b" {
  subnet_id      = var.subnet_private_us_east_1b
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "public-us-east-1a" {
  subnet_id      = var.subnet_public_us_east_1a
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-us-east-1b" {
  subnet_id      = var.subnet_public_us_east_1b
  route_table_id = aws_route_table.public.id
}