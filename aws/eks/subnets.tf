resource "aws_subnet" "public_1" {
  vpc_id = aws_vpc.test_vpc.id
  cidr_block = "192.168.0.0/18"
  availability_zone = "us-east-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-us-east-2a"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id = aws_vpc.test_vpc.id
  cidr_block = "192.168.64.0/18"
  availability_zone = "us-east-2b"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-us-east-2b"
  }
}

resource "aws_subnet" "private_1" {
  vpc_id = aws_vpc.test_vpc.id
  cidr_block = "192.168.128.0/18"
  availability_zone = "us-east-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-us-east-2a"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id = aws_vpc.test_vpc.id
  cidr_block = "192.168.192.0/18"
  availability_zone = "us-east-2b"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-us-east-2b"
  }
}