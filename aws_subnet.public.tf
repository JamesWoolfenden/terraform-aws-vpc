resource "aws_subnet" "public" {
  count             = var.subnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = local.public_cidrs[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = merge(var.common_tags,
    map("Type", "Public"),
  map("Name", "${upper(var.account_name)}-Public-${var.zone[count.index]}"))
}
