terraform {
  required_providers {
    aws = {
      version = "3.24.1"
      source  = "hashicorp/aws"
    }

    template = {
      version = "2.2.0"
    }

  }
}
