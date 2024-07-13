terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "narendra-shop-aws-eks"
    key    = "expense-dev-vpc"
    region = "us-east-1"
    dynamodb_table = "narendra-shop-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}