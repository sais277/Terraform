provider "aws" {
  version = " ~> 2.6 "
  region = "AWS-region"
  access_key = "AWS-Access-Key"
  secret_key = "AWS-Secret"
} 

resource "aws_instance" "firstec2" {
  ami = "ami-09a7bbd08886aafdf"
  instance_type = "t2.micro"

  tags = {
    Name = "First-EC2"
  }
}

output "ip" {
  value = aws_instance.firstec2.public_ip
}

output "EC2-state" {
  value = aws_instance.firstec2.instance_state
}
