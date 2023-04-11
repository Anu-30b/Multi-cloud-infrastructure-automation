provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example-inst" {
  ami           = "ami-0fa1de1d60de6a97e"
  instance_type = "t2.micro"
  key_name      = "new"
  subnet_id     = "subnet-07f66d35f9d8a83b7"
  vpc_security_group_ids = [
    "sg-0eb1868af0f16bbbb"
  ]

  tags = {
    Name = "example-instance"
  }
}