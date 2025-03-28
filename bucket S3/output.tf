output "bucket_name" {
  description = "Nome do bucket S3 criado"
  value       = aws_s3_bucket.bucket.id
}

output "bucket_arn" {
  description = "ARN do bucket S3"
  value       = aws_s3_bucket.bucket.arn
}

output "bucket_url" {
  description = "URL do bucket S3"
  value       = "https://${aws_s3_bucket.bucket.bucket}.s3.amazonaws.com"
}

output "versioning_status" {
  description = "Status do versionamento do bucket S3"
  value       = aws_s3_bucket_versioning.versioning.versioning_configuration[0].status
}