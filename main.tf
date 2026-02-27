resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "gettechie-week4-vpc"
  }
}

resource "aws_subnet" "private-2b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-west-2b"


  tags = {
    Name = "gettechie-week4-private-AZ2b"
  }
}

resource "aws_subnet" "public-2a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    Name = "gettechie-week4-public-AZ2a"
  }
}

resource "aws_subnet" "private-2a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "eu-west-2a"


  tags = {
    Name = "gettechie-week4-private-AZ2a"
  }
}

resource "aws_subnet" "public-2b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "eu-west-2b"

  tags = {
    Name = "gettechie-week4-public-AZ2b"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-018ff7ece22bf96db" 
  instance_type = "t2.micro"
  tag = "gettechie-week4-lab"
}