resource "aws_route_table_association" "public" {
  subnet_id      = "${element(aws_subnet.public.*.id, 0 )}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "public-1" {
  subnet_id      = "${element(aws_subnet.public.*.id, 1 )}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "public-2" {
  subnet_id      = "${element(aws_subnet.public.*.id, 2 )}"
  route_table_id = "${aws_route_table.public.id}"
}
