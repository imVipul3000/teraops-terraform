resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name = "nat-${var.environment}"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = var.subnet_public_us_east_1a

  tags = {
    Name = "nat-teraops-${var.environment}"
  }
}