provider "aws"  {
region = "us-east-1"

}
resource "aws_instance" "myec2" {
ami = "ami-0685bcc683dadb6b9"
instance_type = "t3.micro"
key_name = "terraform"
vpc_security_group_ids = ["sg-090b2a83d53a2eee6"]
tags = {

  Name = "myec2"
  name = "yash"
  env = "dev"

}

}