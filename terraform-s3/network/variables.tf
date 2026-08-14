variable "vpc" {
  type        = string
  default     = "my network"
  description = "Name of the VPC"
  sensitive   = true
}
variable "subnet_cidrs" {
  description = "CIDR blocks for the subnets"
  type        = list(string)
  default     = ["10.2.1.0/24", "10.2.2.0/24", "10.2.3.0/24"]
}

variable "az_range" {
  type        = list(string)
  default     = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
  description = "Availability zones for the subnets"
}
