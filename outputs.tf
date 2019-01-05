output "private_cidrs" {
  value = "${local.private_cidrs}"
}

output "public_cidrs" {
  value = "${local.private_cidrs}"
}

output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "private_subnets" {
  value = "${aws_subnet.private.*.id}"
}

output "public_subnets" {
  value = "${aws_subnet.public.*.id}"
}
