output "private_cidrs" {
  value = "${module.basenetwork.private_cidrs}"
}

output "public_cidrs" {
  value = "${module.basenetwork.private_cidrs}"
}

output "vpc_id" {
  value = "${module.basenetwork.vpc_id}"
}

output "private_subnets" {
  value = "${module.basenetwork.private_subnets}"
}

output "public_subnets" {
  value = "${module.basenetwork.public_subnets}"
}
