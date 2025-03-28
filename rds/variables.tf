variable "aws_region" {
  description = "Região AWS"
  default     = "us-east-1"
}

variable "db_name" {
  description = "Nome identificador da instância RDS"
  default     = "meu-postgres"
}

variable "db_username" {
  description = "Usuário master do banco"
  default     = "admin"
}

variable "db_password" {
  description = "Senha do usuário master"
  type        = string
  sensitive   = true
}

variable "instance_class" {
  description = "Tipo da instância"
  default     = "db.t4g.micro"
}

variable "vpc_id" {
  description = "ID da VPC"
  type        = string
}

variable "private_subnets" {
  description = "IDs das subnets privadas"
  type        = list(string)
}

variable "my_ip" {
  description = "Seu IP público para acesso ao banco (formato CIDR)"
  default     = "177.220.0.0/32" # Substitua pelo seu IP
}