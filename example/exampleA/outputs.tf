output "private_cidrs" {
<<<<<<< Updated upstream
  value       = module.vpc.private_cidrs
=======
  value       = "${module.vpc.private_cidrs}"
>>>>>>> Stashed changes
  description = "The CIDR ranges used in the private subnets"
}

output "public_cidrs" {
<<<<<<< Updated upstream
  value       = module.vpc.private_cidrs
=======
  value       = "${module.vpc.private_cidrs}"
>>>>>>> Stashed changes
  description = "The CIDR ranges used in the public subnets"
}

output "vpc_id" {
<<<<<<< Updated upstream
  value       = module.vpc.vpc_id
=======
  value       = "${module.vpc.vpc_id}"
>>>>>>> Stashed changes
  description = "The VPC id"
}

output "private_subnets" {
<<<<<<< Updated upstream
  value       = module.vpc.private_subnets
=======
  value       = "${module.vpc.private_subnets}"
>>>>>>> Stashed changes
  description = "The Private subnets id"
}

output "public_subnets" {
<<<<<<< Updated upstream
  value = module.vpc.public_subnets
=======
  value = "${module.vpc.public_subnets}"
>>>>>>> Stashed changes

  description = "The Public subnets id"
}
