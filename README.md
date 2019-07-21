
[![Slalom][logo]](https://slalom.com)

# terraform-aws-vpc [![Build Status](https://travis-ci.com/JamesWoolfenden/terraform-aws-vpc.svg?branch=master)](https://travis-ci.com/JamesWoolfenden/terraform-aws-vpc) [![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-vpc.svg)](https://github.com/JamesWoolfenden/terraform-aws-vpc/releases/latest)

This module is to create a VPC, Sub-nets and routes for your standard AWS VPC pattern. It also implements the common-tag scheme and calculates the breakdown of your CIDR.
This module defaults to creating 3 private subnets and public sub-nets, or optionally less.

---


## Usage

Include this repository as a module in your existing terraform code:

```hcl
module "vpc" {
  source       = "JamesWoolfenden/vpc/aws"
  version      = "0.1.21"
  cidr         = var.cidr
  zone         = var.zone
  common_tags  = var.common_tags
  account_name = var.account_name
}
```

Using these as your values in your terraform tfvars file:

```YAML
account_name = "test"
cidr         = "10.0.0.0/21"
zone         = ["A","B","C"]
common_tags={
    AccountType=           "Management"
    Application=           "base"
    Environment=           "Management"
}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| account\_name |  | string | n/a | yes |
| cidr | The range to be associated with the VPC and cleaved into the subnets | string | n/a | yes |
| common\_tags | A tagging scheme | map | n/a | yes |
| subnets | The number of subnets required, less than or equal to the number of availability zones | number | `"3"` | no |
| zone | Availablity zone names | list | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| private\_cidrs | The CIDR ranges for your private subnets |
| private\_subnets | The IDs of your private subnets |
| public\_cidrs | The CIDR ranges for your public subnets |
| public\_subnets | The IDs of your public subnets |
| vpc\_id | The ID of your selected VPC |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Instructions

## Related Projects

Check out these related projects.

- [terraform-aws-codebuild](https://github.com/jameswoolfenden/terraform-aws-codebuild) - Making a Build pipeline

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-vpc/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-vpc/issues) to report any bugs or file feature requests.

### Contributors

  [![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

  [jameswoolfenden_homepage]: https://github.com/jameswoolfenden
  [jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/company/slalom-consulting/
[twitter]: https://twitter.com/Slalom

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-vpc&url=https://github.com/jameswoolfenden/terraform-aws-vpc
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-vpc&url=https://github.com/jameswoolfenden/terraform-aws-vpc
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-vpc
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-vpc
[share_email]: mailto:?subject=terraform-aws-vpc&body=https://github.com/jameswoolfenden/terraform-aws-vpc
