provider "aws" {
  region = "us-east-1"
}

module "eks" {
  source             = "./eks"
  private_subnet_ids = ["subnet-018b9883a2d41dcbe", "subnet-00d7efa9c058e87cd"]
  cluster_name       = "cluster-tomili"
  vpc_id             = "vpc-055b825cde3d58698"
  cluster_version    = "1.21"
  qtd_min_nodes      = 2
  enable_argocd      = true
  enable_metrics_server = true
  enable_auto_scale = true
  instance_type = ["t3.micro"]
}

