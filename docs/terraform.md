## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| account_name | - | string | - | yes |
| cidr | The range to be associated with the VPC and cleaved into the subnets | string | - | yes |
| common_tags | A tagging scheme | map | - | yes |
| depends_on | This is a way to make a module depends on, which isnt built in. | list | `<list>` | no |
| zone | Availablity zone names | list | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| private_cidrs | - |
| private_subnets | - |
| public_cidrs | - |
| public_subnets | - |
| vpc_id | - |
