variable "vpc_cidr" {
  type = string
}

variable "public_subnets" {
  type = list(string)
}

variable "availability_zones" {
  type = list(string)
}

variable "vpc_name" {
  type = string
}

variable "environment" {
  type = string
}
