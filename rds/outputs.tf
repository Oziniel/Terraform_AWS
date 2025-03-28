output "rds_endpoint" {
  description = "Endpoint de conexão do banco"
  value       = aws_db_instance.postgres.endpoint
}

output "db_username" {
  description = "Usuário master"
  value       = var.db_username
  sensitive   = true
}