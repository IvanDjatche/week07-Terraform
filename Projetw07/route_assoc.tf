resource "aws_route_table_association" "routeA" {

  route_table_id = aws_route_table.route1.id
  subnet_id      = aws_subnet.public_subnet1.id

}

resource "aws_route_table_association" "routB" {

  route_table_id = aws_route_table.route1.id
  subnet_id      = aws_subnet.public_subnet2.id

}