## Gateway 
resource "aws_internet_gateway" "gt1" {
  vpc_id = aws_vpc.projet07.id
  tags = {
    Name = "splunkGat"
  }

}