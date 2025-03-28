# modules/ecs-cluster/main.tf

# 1. Criação do Cluster ECS
resource "aws_ecs_cluster" "this" {
  name = var.cluster_name  # Variável definida em variables.tf
  tags = var.tags         # Variável definida em variables.tf

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

# 2. IAM Role para execução de tarefas
resource "aws_iam_role" "ecs_execution_role" {
  name = "${var.cluster_name}-execution-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "ecs-tasks.amazonaws.com"
      }
    }]
  })

  tags = var.tags
}

# 3. Policy Attachment padrão
resource "aws_iam_role_policy_attachment" "ecs_task_execution" {
  role       = aws_iam_role.ecs_execution_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

# 4. Outputs (opcional - se não tiver um arquivo outputs.tf separado)
output "cluster_arn" {
  value = aws_ecs_cluster.this.arn
}

output "cluster_name" {
  value = aws_ecs_cluster.this.name
}

output "execution_role_arn" {
  value = aws_iam_role.ecs_execution_role.arn
}