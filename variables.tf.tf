# modules/eks/variables.tf
variable "region" {}
variable "cluster_name" {}
variable "cluster_version" { default = "1.21" }
variable "subnets" {}
variable "vpc_id" {}
variable "node_groups" {}
