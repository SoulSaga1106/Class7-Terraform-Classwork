resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.wutang-vpc.id

  tags = {
    Name    = "igw"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}