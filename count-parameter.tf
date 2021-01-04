provider "aws" {
  region     = "us-east-1"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}


resource "aws_instance" "instance name" {
   ami = ""
   instance_type = "t2.micro"
   count = 3
}
