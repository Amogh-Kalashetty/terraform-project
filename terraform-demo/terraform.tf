terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.0"
    }
  }

  backend "s3" {
  bucket = "multistage-backend-state-amogh"
  dynamodb_table = "backend_table"
  key = "terraform.tfstate"
  region = "us-east-1"
  }
}