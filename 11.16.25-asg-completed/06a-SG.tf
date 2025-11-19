resource "aws_security_group" "wutang-sg-lb" {
  name        = "wutang-sg-lb"
  description = "Allow inbound traffic and all outbound traffic to the 36th chamber"
  vpc_id      = aws_vpc.wutang-vpc.id

  tags =  {
  Name = "wutang-sg-lb"
  }
}


resource "aws_vpc_security_group_ingress_rule" "wutang-sg-lb-http" {
  description       = "HTTP from anywhere"
  security_group_id = aws_security_group.wutang-sg-lb.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80

 tags =  {
  Name = "HTTP"
  }


}


resource "aws_vpc_security_group_egress_rule" "wutang-sg-lb-egress-ipv4" {
  security_group_id = aws_security_group.wutang-sg-lb.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

# resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
#   security_group_id = aws_security_group.wutang-sg-lb.id
#   cidr_ipv6         = "::/0"
#   ip_protocol       = "-1" # semantically equivalent to all ports
# }