resource "aws_subnet" "private" {
  count             = var.subnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = local.private_cidrs[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = merge(var.common_tags,
    map("Type", "Private"),
  map("Name", "${upper(var.account_name)}-Private-${var.zone[count.index]}"))
}
