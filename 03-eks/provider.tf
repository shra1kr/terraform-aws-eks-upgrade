terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
  backend "s3" {
    bucket = "shravan-remote-state"
    key    = "expense-dev-eks"
    region = "us-east-1"
    dynamodb_table = "shravan-locking"
  }
}


# provide authentication here
provider "aws" {
  region = "us-east-1"
}