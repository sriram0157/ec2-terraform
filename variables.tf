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