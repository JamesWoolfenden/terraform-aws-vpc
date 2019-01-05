resource "aws_route_table" "privateb" {
  vpc_id = "${aws_vpc.main.id}"

  propagating_vgws = ["${aws_vpn_gateway.vpn_gw.id}"]

  tags = "${merge(var.common_tags,
  map("Name", "${var.account_name}-Private-${element(aws_subnet.private.*.id,1)}"))}"
}

resource "aws_route" "privateb" {
  route_table_id         = "${aws_route_table.privateb.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${element(aws_nat_gateway.natgateway.*.id,1)}"
}
