# Create a VPC
resource "aws_vpc" "my_vpc" {
    cidr_block = var.vpc_cidr_block

    tags = {
      Name = "MyTerraformVpc"
    }
  
}
# create public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.public_subnet

  tags = {
    Name = "MyPublicSubnet"
  }
}
# Create private subnet
resource "aws_subnet" "private_subnet" {
    vpc_id =  aws_vpc.my_vpc.id
    cidr_block = var.private_subnet
  
}
# Create Internet Gateway
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.my_vpc.id

    tags = {
      Name = "Internet gateway"
    }
  
}

# Create route tables for public subnet
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = var.public_route_table
    gateway_id = aws_internet_gateway.igw.id
  }
}

# Route table association public subnet
resource "aws_route_table_association" "publicRTassociation" {
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.public_route_table.id
  
}