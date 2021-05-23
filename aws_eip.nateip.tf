resource "aws_eip" "nateip" {
  # checkov:skip=CKV2_AWS_19: Not a good check
  count = var.subnets
}
