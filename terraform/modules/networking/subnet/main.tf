resource "aws_subnet" "private_eu_west_2a" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_private-1
  availability_zone = var.subnet_private_1_availability_zone

  tags = {
    "Name"                            = "private-eu-west-2a-${var.environment}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${var.environment}" = "owned"
    "kubernetes.io/cluster/replatform-${var.environment}" = "shared"
  }
}

resource "aws_subnet" "public_eu_west_2a" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet_public-1
  availability_zone       = var.subnet_public_1_availability_zone
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "public-eu-west-2a-${var.environment}"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/${var.environment}" = "owned"
    "kubernetes.io/cluster/replatform-${var.environment}" = "shared"
  }
}