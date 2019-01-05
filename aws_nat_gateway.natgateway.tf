resource "aws_nat_gateway" "natgateway" {
  count         = 3
  allocation_id = "${element(aws_eip.nateip.*.id, count.index)}"
  subnet_id     = "${element(aws_subnet.public.*.id, count.index)}"

  #public_ip     = "${element(aws_eip.nateip.*.public_ip, count.index)}"

  depends_on = ["aws_internet_gateway.gw"]
  tags       = "${merge(var.common_tags, map("Name", "${upper(var.account_name)}-AZ${count.index+1}"))}"
}
