output "cluster_endpoint" {
  value       = module.eks.cluster_endpoint
  description = "Endpoint for EKS cluster API."
}

output "cluster_id" {
  value       = module.eks.cluster_id
  description = "EKS cluster ID."
}


output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The ID of the VPC created for the environment."
}

output "private_subnets" {
  value       = module.vpc.private_subnets
  description = "List of IDs for private subnets in the VPC."
}

output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "List of IDs for public subnets in the VPC."
}

output "eks_cluster_security_group_id" {
  value       = module.eks.cluster_security_group_id
  description = "The security group ID attached to the EKS cluster."
}

output "eks_node_groups" {
  value       = module.eks.node_groups
  description = "Information about the node groups in the EKS cluster."
}
