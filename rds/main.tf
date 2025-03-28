provider "aws" {
  region = var.aws_region
}

# Security Group para o RDS
resource "aws_security_group" "rds" {
  name        = "rds-${var.db_name}-sg"
  description = "Permite acesso ao PostgreSQL"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = [var.my_ip] # 👈 Restrito ao seu IP
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "rds-sg"
  }
}

# Subnet Group (usando subnets privadas)
resource "aws_db_subnet_group" "main" {
  name       = "rds-subnet-group"
  subnet_ids = var.private_subnets

  tags = {
    Name = "RDS Subnet Group"
  }
}

# Instância RDS PostgreSQL
resource "aws_db_instance" "postgres" {
  identifier             = var.db_name
  engine                 = "postgres"
  engine_version         = "15.4"
  instance_class         = var.instance_class
  allocated_storage      = 20
  db_name                = "mydatabase" # Nome do banco interno
  username               = var.db_username
  password               = var.db_password
  port                   = 5432
  skip_final_snapshot    = true # ⚠️ Altere para false em produção!
  db_subnet_group_name   = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.rds.id]

  tags = {
    Environment = "dev"
  }
}