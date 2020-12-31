Base Terraform Configuration (Before any modification)
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}
Final Modified Terraform Configuration:
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = var.instancetype
}
variables.tf
variable "instancetype" {
  default = "t2.micro"
}
terraform.tfvars
instancetype="t2.large"
Loading Variable Values from CLI
terraform plan -var="instancetype=t2.small"
Loading from custom tfvars file
terraform plan -var-file="custom.tfvars"
