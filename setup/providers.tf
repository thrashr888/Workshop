terraform {
  required_version = ">= 1.0.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.72.0"
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = "~>0.58.0"
    }
  }
}

provider "aws" {
  region = var.region
}

provider "aws" {
  alias  = "cloudfront_waf"
  region = "us-east-1" # for Cloudfront WAF only, must be in us-east-1
}

provider "tfe" {
}
