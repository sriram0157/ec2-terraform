resource "aws_security_group" "web_s" {
    name        = "web_s"
    description = "Allow inbound traffic on port 80 and 22"
    vpc_id      = data.aws_vpc.selected_vpc.id
}

resource "aws_security_group_rule" "web_s_rule" {
    type              = "ingress"
    from_port         = 22
    to_port           = 22
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
    security_group_id = aws_security_group.web_s.id
}

resource "aws_instance" "web_server1" {
    
    count = var.create_instance ? length(var.ec2_instance_name) : var.demo1 ? 1 : 0
    ami           = data.aws_ami.ubuntu.id
    instance_type = "t3.micro"
    key_name     = var.create_instance ? var.key_name : "github"

    subnet_id = data.aws_subnet.ap_southeast_2a.id

    vpc_security_group_ids = [
    aws_security_group.web_s.id
    ]

    tags = {
    Name =  var.create_instance ? var.ec2_instance_name[count.index] : "demo1"
    
    }
}