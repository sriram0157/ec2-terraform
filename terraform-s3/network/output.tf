output "aws_vpc_cidr" {
  value = aws_vpc.demo_vpc.cidr_block
}

output "subnet_ids" {
  value = aws_subnet.my_subnet[*].id
}