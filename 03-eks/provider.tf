terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.57"
    }
  }
  backend "s3" {
    bucket = "daws78s-nnr6"
    key    = "eks-cluster"
    region = "us-east-1"
    dynamodb_table = "daws78s-nnr6"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}