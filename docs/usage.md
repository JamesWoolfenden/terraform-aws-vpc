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