resource "aws_route_table" "route1" {
  vpc_id = aws_vpc.projet07.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gt1.id
  }
}