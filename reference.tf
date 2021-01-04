provider "aws" {
  region     = "us-east-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}



resource "aws_instance" "desired instance name" {
   ami = ""
   instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  vpc      = true
}

resource "aws_eip_association" "desired name eip" {
  instance_id   = aws_instance.instance name.id
  allocation_id = aws_eip.lb.id
}


resource "aws_security_group" "allow_tls" {
  name        = "name SG"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]

#    cidr_blocks = [aws_eip.lb.public_ip/32]
  }
}

