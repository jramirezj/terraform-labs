resource "aws_vpc" "my_vpc" {
  cidr_block = var.in_vpc_cidr

   tags = merge(
    var.in_tags,
    {Name = "VPC ${terraform.workspace}"}
  )
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.in_subnet_cidr

   tags = merge(
    var.in_tags,
    {Name = "Subnet ${terraform.workspace}"}
  )
 
}
