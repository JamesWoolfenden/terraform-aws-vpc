variable "account_name" {
  type        = "string"
  description = ""
}

variable "cidr" {
  type        = "string"
  description = "The range to be associated with the VPC and cleaved into the subnets"
}

variable "common_tags" {
  type        = "map"
  description = "A tagging scheme"
}

variable "zone" {
  type        = "list"
  description = "Availablity zone names"
}

# this is enables you to add dependancies
variable depends_on {
  default     = []
  description = "This is a way to make a module depends on, which isnt built in."
  type        = "list"
}

locals {
  public_cidrs  = ["${cidrsubnet("${var.cidr}", 3, 0)}", "${cidrsubnet("${var.cidr}", 3, 1)}", "${cidrsubnet("${var.cidr}", 3, 2)}"]
  private_cidrs = ["${cidrsubnet("${var.cidr}", 3, 3)}", "${cidrsubnet("${var.cidr}", 3, 4)}", "${cidrsubnet("${var.cidr}", 3, 5)}"]
}
