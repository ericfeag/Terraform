#Define External IP
resource "aws_eip" "levelup-nat" {
    vpc = true
}

resource "aws_nat_gateway" "levelpu-nat-gw" {
  allocation_id = aws_eip.levelup-nat.id
  subnet_id     = aws_subnet.levelupvpc-public-1.id
  depends_on = [aws_internet_gateway.levelup-gw]
}

resource "aws_route_table" "levelup-private" {
  vpc_id = aws_vpc.levelupvpc.id
  route = {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.levelup-nat-gw.id
  }
  tags = {
    Name = "levelupvpc-private"
  }
}

resource "aws_route_table_association" "level-private-1-a" {
  subnet_id      = aws_subnet.levelupvpc-private-1.id
  route_table_id = aws_route_table.levelup-private.id
}

resource "aws_route_table_association" "level-private-1-b" {
  subnet_id      = aws_subnet.levelupvpc-private-2.id
  route_table_id = aws_route_table.levelup-private.id
}

resource "aws_route_table_association" "level-private-1-c" {
  subnet_id      = aws_subnet.levelupvpc-private-3.id
  route_table_id = aws_route_table.levelup-private.id
}