variable "in_vpc_cidr" {
  description = "CIDR de la VPC"
  type        = string
}

variable "in_subnet_cidr" {
  description = "CIDR de la Subnet"
  type        = string
}


variable "in_tags" {
  type = map(string)
}
