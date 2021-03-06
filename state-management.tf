provider "aws" {
  region     = "us-east-1"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_instance" "desired instance name" {
  ami           = ""
  instance_type = "t2.micro"
}

resource "aws_iam_user" "lb" {
  name = "loadbalancer"
  path = "/system/"
}

terraform {
  backend "s3" {
    bucket = "bucket name"
    key    = "keypair name"
    region = "us-east-1"
    access_key = "YOUR-ACCESS-KEY"
    secret_key = "YOUR-SECRET-KEY"
  }
}

#Commands used for State Management
Example:
terraform state list
terraform state mv aws_instance.webapp aws_instance.myec2
terraform state pull
terraform state rm aws_instance.myec2
