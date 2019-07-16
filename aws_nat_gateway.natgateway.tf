resource "aws_nat_gateway" "natgateway" {
  count         = var.subnets
  allocation_id = element(aws_eip.nateip.*.id, count.index)
  depends_on    = ["aws_internet_gateway.gw"]
  subnet_id     = element(aws_subnet.public.*.id, count.index)
  tags = merge(var.common_tags,
  map("Name", "${upper(var.account_name)}-AZ${count.index + 1}"))
}
