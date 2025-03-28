variable "aws_region" {
  description = "Região da AWS onde o bucket será criado"
  type        = string
  default     = "us-east-1"
}

# variables.tf
variable "bucket_name" {
  description = "Nome do bucket S3"
  default     = "lab-01-bucket-oziniel"  # Nomes de buckets devem ser em minúsculas e sem underscores
}

variable "environment" {
  description = "Ambiente da infraestrutura (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "versioning_enabled" {
  description = "Habilita ou desabilita o versionamento do bucket"
  type        = bool
  default     = true
}
