resource "aws_eip" "wutang-nat-eip" {
  
tags = {
    Name = "wutang-nat-eip"
  }
}

resource "aws_nat_gateway" "wutang-nat-gateway" {
  allocation_id = aws_eip.wutang-nat-eip.id
  subnet_id     = aws_subnet.public-eu-west-3a.id

  tags = {
    Name = "wutang-nat-gateway"
  }

  depends_on = [aws_internet_gateway.igw]
}