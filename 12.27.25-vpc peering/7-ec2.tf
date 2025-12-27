resource "aws_instance" "wutang-ec2" {
  ami           = "ami-09968b16214ef62ce" # eu-west-3
  instance_type = "t3.micro"
  security_groups = [aws_security_group.wutang-sg.id]
  subnet_id = aws_subnet.public-eu-west-3a.id
  associate_public_ip_address = true   #unsure if this is needed, if subnet has it
  
 user_data = file("user_data.sh")


  tags = {
    Name = "wutang-ec2"
  }
}

  
