terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }

  backend "s3" {
    bucket = "pavandevops-remote-state"
    key    = "expense-eksctl-dev"
    region = "us-east-1"
    dynamodb_table = "pavandevops-locking"
  }
}

# provide authentication here
provider "aws" {
    region = "us-east-1"
  # Configuration options
}