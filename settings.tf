terraform {
  required_version = "< 0.11"
  required_providers {
    aws = "~> 2.0"
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "YOUR ACCESS-KEY"
  secret_key = "YOUR SECRET-KEY"
}

resource "aws_instance" "desired instance name" {
   ami = ""
   instance_type = "t2.micro"
}
