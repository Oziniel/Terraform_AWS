resource "aws_ecs_cluster" "this" {
  name = var.cluster_name
  tags = var.tags
}

resource "aws_iam_role" "execution" {
  name               = "${var.cluster_name}-execution-role"
  assume_role_policy = file("${path.module}/policies/assume-role.json")
}