variable "cluster_name" {
  description = "Nome do cluster ECS"
  type        = string
}

variable "tags" {
  description = "Tags padrão para recursos"
  type        = map(string)
  default     = {}
}