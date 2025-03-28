variable "aws_region" {
  description = "Região AWS onde os recursos serão criados"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Ambiente (dev/staging/prod)"
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "Tags comuns para todos os recursos"
  type        = map(string)
  default     = {
    Project     = "Portfolio AWS"
    Environment = "dev"
  }
}