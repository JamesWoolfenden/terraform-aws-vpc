module "vpc" {
  source       = "../../"
  cidr         = var.cidr
  zone         = var.zone
  common_tags  = var.common_tags
  account_name = var.account_name
}
