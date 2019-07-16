resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  propagating_vgws = [aws_vpn_gateway.vpn_gw.id]

  tags = merge(var.common_tags,
  map("Name", "${var.account_name}-Private-${element(aws_subnet.private.*.id, 0)}"))
}

resource "aws_route" "private" {
  route_table_id         = aws_route_table.private.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = element(aws_nat_gateway.natgateway.*.id, 0)
}
