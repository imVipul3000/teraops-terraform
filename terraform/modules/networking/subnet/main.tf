resource "aws_subnet" "private_us_east_1a" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_private-1
  availability_zone = var.subnet_private_1_availability_zone

  tags = {
    "Name"                            = "private-us-east-1a-${var.environment}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${var.environment}" = "owned"
    "kubernetes.io/cluster/teraops-${var.environment}" = "shared"
  }
}

resource "aws_subnet" "private_us_east_1b" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_private-2
  availability_zone = var.subnet_private_2_availability_zone

  tags = {
    "Name"                            = "private-us-east-1b-${var.environment}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${var.environment}"      = "owned"
    "kubernetes.io/cluster/teraops-${var.environment}" = "shared"
  }
}

resource "aws_subnet" "public_us_east_1a" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet_public-1
  availability_zone       = var.subnet_public_1_availability_zone
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "public-us-east-1a-${var.environment}"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/${var.environment}" = "owned"
    "kubernetes.io/cluster/teraops-${var.environment}" = "shared"
  }
}

resource "aws_subnet" "public_us_east_1b" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet_public-2
  availability_zone       = var.subnet_public_2_availability_zone
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "public-us-east-1b-${var.environment}"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/${var.environment}" = "owned"
    "kubernetes.io/cluster/teraops-${var.environment}" = "shared"
  }
}