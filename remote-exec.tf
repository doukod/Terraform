resource "aws_instance" "desired instance name" {
   ami = ""
   instance_type = "t2.micro"
   key_name = "keypair name"

   provisioner "remote-exec" {
     inline = [
       "sudo yum install httpd -y",
       "sudo systemctl start httpd"
     ]

   connection {
     type = "ssh"
     user = "ec2-user"
     private_key = file("./keypair name")
     host = self.public_ip
   }
   }
}

