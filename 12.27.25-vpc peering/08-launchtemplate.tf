resource "aws_launch_template" "wutang-lt" {
  name_prefix   = "wutang-lt"
  image_id      = "ami-09968b16214ef62ce"  
  instance_type = "t3.micro"

  #key_name = "MyLinuxBox"

  vpc_security_group_ids = [aws_security_group.wutang-sg.id]

  user_data = base64encode(file("user_data.sh"))
}