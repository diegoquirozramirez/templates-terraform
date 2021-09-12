resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.test_vpc.id
  tags = {
      Name = "main"
  }
}