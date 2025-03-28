variable "vpc_cidr" {
  description = "Bloco CIDR da VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  description = "Blocos CIDR para subnets públicas"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]  # Uma subnet por AZ
}

variable "aws_region" {
  description = "Região AWS"
  default     = "us-east-1"
}