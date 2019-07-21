resource "aws_eip" "nateip" {
  count = var.subnets
  tags  = var.common_tags
}
