resource "aws_subnet" "private_1" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_private-1
  availability_zone = var.subnet_private_1_availability_zone

  tags = {
    "Name"                            = "private-1-${var.environment}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${var.environment}" = "owned"
    "kubernetes.io/cluster/latitude-eks-${var.environment}" = "shared"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_private-2
  availability_zone = var.subnet_private_2_availability_zone

  tags = {
    "Name"                            = "private-2-${var.environment}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${var.environment}"      = "owned"
    "kubernetes.io/cluster/latitude-eks-${var.environment}" = "shared"
  }
}

resource "aws_subnet" "public_1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet_public-1
  availability_zone       = var.subnet_public_1_availability_zone
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "public-1-${var.environment}"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/${var.environment}" = "owned"
    "kubernetes.io/cluster/latitude-eks-${var.environment}" = "shared"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet_public-2
  availability_zone       = var.subnet_public_2_availability_zone
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "public-2-${var.environment}"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/${var.environment}" = "owned"
    "kubernetes.io/cluster/latitude-eks-${var.environment}" = "shared"
  }
}
