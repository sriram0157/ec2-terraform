
# Select the VPC
data "aws_vpc" "selected_vpc" {
    id = "vpc-05be5e25f66194847"
}

# Select the existing subnet
data "aws_subnet" "ap_southeast_2a" {
    id = "subnet-03a843a386df95c40"
}

# Select Ubuntu 24.04 LTS AMD64
data "aws_ami" "ubuntu" {
    most_recent = false
    owners      = ["099720109477"]

    filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20260203"]
    }

    filter {
    name   = "architecture"
    values = ["x86_64"]
    }

    filter {
    name   = "virtualization-type"
    values = ["hvm"]
    }

    filter {
    name   = "root-device-type"
    values = ["ebs"]
    }
}