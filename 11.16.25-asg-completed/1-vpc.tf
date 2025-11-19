# VPC resource
# This creates the virtual private cloud
resource "aws_vpc" "wutang-vpc" {
  
enable_dns_support = true
enable_dns_hostnames = true

  #region      = "eu-west-3"
  cidr_block  = "10.109.0.0/16"
  
  tags = {
    Name = "wutang-vpc"
    Service = "vpc"
    Owner = "Chewcacca"
    Planet = "Mustafar"
  }

}