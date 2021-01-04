provider "aws" {
  region = "us-west-1"
  access_key = "YOUR ACCESS-KEY HERE"
  secret_key = "YOUR SECRET-KEY HERE"
}

terraform {
  backend "s3" {
    bucket = "bucket name"
    key    = "keypair"
    region = "us-east-1"
    access_key = "YOUR-ACCESS-KEY"
    secret_key = "YOUR-SECRET-KEY"
    dynamodb_table = "dynamodb table name"
  }
}
