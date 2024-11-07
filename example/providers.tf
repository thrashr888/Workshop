terraform {
  cloud {
    # TODO: Change this to your Terraform Cloud org name.
    organization = "pthrasher_v2"
    workspaces {
      name = "my-aws-workspace"
    }
  }

  required_version = ">= 1.0.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.72.0"
    }
  }
}

provider "aws" {
  region = var.region
}
