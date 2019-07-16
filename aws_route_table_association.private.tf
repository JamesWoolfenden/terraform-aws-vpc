resource "aws_route_table_association" "private" {
  count          = var.subnets
  subnet_id      = element(aws_subnet.private.*.id, count.index)
  route_table_id = aws_route_table.private.id
}
