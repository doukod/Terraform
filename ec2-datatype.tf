provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_iam_user" "lb" {
  name = var.usernumber
  path = "/system/"
}


variable.tf
variable "usernumber" {
  type = number
}
