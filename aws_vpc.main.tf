resource "aws_vpc" "main" {
  cidr_block           = var.cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = local.tags
}


locals {
  tags = merge(var.common_tags, tomap({ "Name" = upper(var.account_name) }))
}
