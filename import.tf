#ec2.tf
resource "aws_instance" "desired instance name" {
  ami = " "
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg........", "sg.........."]
  key_name = "keypair name"
  subnet_id = "subnet........."

  tags {
    Name = "desired name"
  }
}


#providers.tf
provider "aws" {
  region = "us-east-1"
}


#Command To Import Resource
terraform import aws_instance.instance name instanceID
