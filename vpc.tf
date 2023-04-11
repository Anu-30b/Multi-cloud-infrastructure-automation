resource "aws_vpc" "example-vpc" {
  cidr_block = "11.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "example-vpc"
  }
}

resource "aws_subnet" "my-subnet" {
  vpc_id     = aws_vpc.example-vpc.id
  cidr_block = "11.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
  Name = "my-subnet"
}
}