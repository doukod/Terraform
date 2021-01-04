provider "aws" {
  region     = "us-east-1"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}
resource "aws_iam_user" "desired name" {
  name = "iamuser.${count.index}"
  count = 2
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.desired name[*].arn
}
