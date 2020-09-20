provider "aws" { # Cloud Provider Details
  version = " ~> 2.6 " # Terraform Cloud Provider Version  
  region = "AWS-Region"
  access_key = "AWS-Access-Key"
  secret_key = "AWS-Client-Secret"
} 

resource "aws_instance" "firstec2" {
  ami = "ami-09a7bbd08886aafdf"
  instance_type = "t2.micro"

  tags = {
    Name = "First-EC2"
  }
}
