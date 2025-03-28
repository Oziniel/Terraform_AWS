output "public_ip" {
  description = "IP público da instância"
  value       = aws_instance.nginx.public_ip
}

output "nginx_url" {
  description = "URL do Nginx"
  value       = "http://${aws_instance.nginx.public_ip}"
}