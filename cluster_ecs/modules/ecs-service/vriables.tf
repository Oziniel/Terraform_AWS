variable "cluster_name" {
  description = "Nome do cluster ECS onde o serviço será implantado"
  type        = string
}

variable "service_name" {
  description = "Nome do serviço ECS"
  type        = string
}

variable "container_image" {
  description = "Imagem Docker do container (ex: nginx:alpine)"
  type        = string
}

variable "container_port" {
  description = "Porta exposta pelo container"
  type        = number
  default     = 80
}

variable "cpu" {
  description = "Unidades de CPU (1024 = 1vCPU)"
  type        = number
  default     = 256
}

variable "memory" {
  description = "Memória reservada (em MB)"
  type        = number
  default     = 512
}

variable "desired_count" {
  description = "Número inicial de tarefas em execução"
  type        = number
  default     = 1
}

variable "subnet_ids" {
  description = "IDs das subnets para implantação (deve ser subnets privadas para Fargate)"
  type        = list(string)
}

variable "security_group_ids" {
  description = "IDs dos security groups associados ao serviço"
  type        = list(string)
}

variable "target_group_arn" {
  description = "ARN do target group do ALB (opcional)"
  type        = string
  default     = ""
}

variable "assign_public_ip" {
  description = "Atribuir IP público às tarefas? (Necessário se não houver NAT Gateway)"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags padrão para todos os recursos"
  type        = map(string)
  default     = {}
}