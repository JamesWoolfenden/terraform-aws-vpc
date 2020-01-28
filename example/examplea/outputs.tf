output "private_cidrs" {
  value       = module.vpc.private_cidrs
  description = "The CIDR ranges used in the private subnets"
}

output "public_cidrs" {
  value       = module.vpc.private_cidrs
  description = "The CIDR ranges used in the public subnets"
}

output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The VPC id"
}

output "private_subnets" {
  value       = module.vpc.private_subnets
  description = "The Private subnets id"
}

output "public_subnets" {
  value = module.vpc.public_subnets

  description = "The Public subnets id"
}
