module "vpc" {
  source       = "JamesWoolfenden/vpc/aws"
  version      = "0.0.3"
  cidr         = "${var.cidr}"
  zone         = "${var.zone}"
  common_tags  = "${var.common_tags}"
  account_name = "${var.account_name}"
}
