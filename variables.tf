#Variable for the AWS region provider
variable "region" {
     type = string
     default = "us-east-1"
     description = "This is the aws region"
}

#variable for the VPC cidr block
variable "vpc_cidr_block" {
    type = string
    default = "10.0.0.0/16"
    description = "VPC cidr block"
}

#Variable for the public subnet
variable "public_subnet" {
    type = string
    default = "10.0.1.0/24"
    description = "This is the public subnet"
}

#variable for the private subnet
variable "private_subnet" {
    type = string
    default = "10.0.2.0/24"
    description = "This is a private subnet"
}

variable "public_route_table" {
    type = string
    default = "10.0.0.0/0"
    description = "This is the public route table"
  
}