variable "aws_region" {
  description = "Região AWS"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Nome da chave SSH (já existente na AWS)"
  type        = string
}