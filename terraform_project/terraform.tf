terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }

  backend "s3" {
        bucket = "sagar-remote-backend"
        key = "terrafom.tstate"
        region = "us-east-1"
        dynamodb_table = "terraform-state"

 }
}

provider "aws" {
        region = "us-east-1"
}
