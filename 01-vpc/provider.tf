terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "daws24-remote-state"
    key    = "expense-vpc-dev"
    region = "us-east-1"
    dynamodb_table = "daws24-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}