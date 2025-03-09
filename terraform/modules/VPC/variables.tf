variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., qa, prod)"
  type        = string
}
