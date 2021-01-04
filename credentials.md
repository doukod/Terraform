#eip.tf
resource "aws_eip" "myeip" {
  vpc = "true"
}

#providers.tf
provider "aws" {
  region     =  "us-east-1"
}

#Documentation for Installing AWS CLI
https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html
