terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket" {
    bucket = "my-home-bucket-list1234567"

    tags = {
      Name ="my bucket"
    }
  
}

terraform {
  backend "s3" {
    bucket         = "my-home-bucket-list1234567"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}


