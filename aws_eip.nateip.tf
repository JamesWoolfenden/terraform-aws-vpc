resource "aws_eip" "nateip" {
  count = 3
  tags  = "${var.common_tags}"
}
