variable "vpc_id" {
  description = "ID da VPC"
  type        = string
}

variable "alb_name" {
  description = "Nome do ALB"
  type        = string
}

variable "subnet_ids" {
  description = "IDs das subnets públicas"
  type        = list(string)
}

variable "container_port" {
  description = "Porta do container"
  type        = number
  default     = 80
}

variable "tags" {
  description = "Tags para os recursos"
  type        = map(string)
  default     = {}
}