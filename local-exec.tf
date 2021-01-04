resource "aws_instance" "desired instance name" {
   ami = ""
   instance_type = "t2.micro"

   provisioner "local-exec" {
    command = "echo ${aws_instance.instance name.private_ip} >> private_ips.txt"
  }
}
