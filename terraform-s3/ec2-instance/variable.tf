variable "key_name" {
  default     = "github"
  description = "The name of the key pair to use for the EC2 instance."
  type        = string
}

variable "ubuntu_version" {
  default     = "26.04"
  description = "The version of Ubuntu to use for the EC2 instance."
  type        = string
}

variable "ssh_port" {
  default     = 22
  description = "The port number for SSH access."
  type        = number
}

variable "cidr_blocks" {
  default     = "0.0.0.0/0"
  description = "The CIDR block for SSH access."
  type        = string
}


variable "create_instance" {
  default     = true
  description = "Whether to create the EC2 instance."
  type        = bool
}

variable "ec2_instance_name" {
  default     = ["demo1","demo2",]
  description = "The instance type for the EC2 instance."
  type        = list(string)
}

variable "demo1" {
  default     = true
  description = "Whether to create the EC2 instance."
  type        = bool
}