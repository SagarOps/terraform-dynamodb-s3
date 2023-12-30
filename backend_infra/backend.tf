terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}

provider "aws" {
        region = "us-east-1"
}

resource "aws_s3_bucket" "remote_backend" {
        bucket = "sagar-remote-backend"
}

resource "aws_dynamodb_table" "remote_table" {
        name = "terraform-state"
        billing_mode = "PAY_PER_REQUEST"
        hash_key = "LockID"
        attribute {
                 name = "LockID"
                 type = "S"
        }
        tags = {
                name = "This is a Remote Table"
        }
}
