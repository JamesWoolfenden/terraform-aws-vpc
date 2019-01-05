resource "aws_route_table_association" "privatea" {
  subnet_id      = "${element(aws_subnet.private.*.id,0)}"
  route_table_id = "${aws_route_table.privatea.id}"
}

resource "aws_route_table_association" "privateb" {
  subnet_id      = "${element(aws_subnet.private.*.id,1)}"
  route_table_id = "${aws_route_table.privateb.id}"
}

resource "aws_route_table_association" "privatec" {
  subnet_id      = "${element(aws_subnet.private.*.id,2)}"
  route_table_id = "${aws_route_table.privatec.id}"
}
