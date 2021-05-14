resource "aws_vpn_gateway" "vpn_gw" {
  vpc_id = aws_vpc.main.id

  tags = merge(var.common_tags,
  tomap({ "Name" = "${upper(var.account_name)}-VGW" }))
}
