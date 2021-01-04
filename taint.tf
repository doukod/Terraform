provider "aws" {
  region     = "us-east-1"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_instance" "desired instance name" {
   ami = ""
   instance_type = "t2.micro"
}



#Taint Command
terraform taint aws_instance.instance name
