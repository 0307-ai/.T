# modules/eks/main.tf
provider "aws" {
  region = var.region
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnets         = var.subnets
  vpc_id          = var.vpc_id
  node_groups     = var.node_groups
}

output "cluster_name" {
  value = module.eks.cluster_name
}
