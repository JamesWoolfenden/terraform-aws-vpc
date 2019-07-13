output "private_cidrs" {
  value       = local.private_cidrs
  description = "The CIDR ranges for your private subnets"
}

output "public_cidrs" {
  value       = local.private_cidrs
  description = "The CIDR ranges for your public subnets"
}

output "vpc_id" {
  value       = aws_vpc.main.id
  description = "The ID of your selected VPC"
}

output "private_subnets" {
  value       = aws_subnet.private.*.id
  description = "The IDs of your private subnets"
}

output "public_subnets" {
  value       = aws_subnet.public.*.id
  description = "The IDs of your public subnets"
}
