variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "demo-vpc"
}

resource "aws_vpc" "demo_vpc" {
  cidr_block = "10.2.0.0/16"

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "my_subnet" {
  count = length(var.subnet_cidrs)

  vpc_id                  = aws_vpc.demo_vpc.id
  cidr_block              = var.subnet_cidrs[count.index]
  availability_zone       = var.az_range[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "app-subnet-${count.index }"
  }
}