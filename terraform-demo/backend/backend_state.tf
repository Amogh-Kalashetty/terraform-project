terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "backend-bucket-amogh" {
    bucket = "multistage-backend-state-amogh"
}

resource "aws_dynamodb_table" "backend_table" {
    name = "backend_table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
}