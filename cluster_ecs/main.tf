module "vpc" {
  source          = "./modules/vpc"
  vpc_cidr       = "10.0.0.0/16"
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
}

module "ecs_cluster" {
  source       = "./modules/ecs-cluster"
  cluster_name = "portfolio-cluster"
}

module "alb" {
  source        = "./modules/alb"
  alb_name      = "portfolio-alb"  # Nome único para seu ALB
  vpc_id        = module.vpc.vpc_id
  subnet_ids    = module.vpc.public_subnets
  container_port = 80
  tags          = var.tags
}