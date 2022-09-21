provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_vpc" "vpc" {
    cidr_block = "192.168.0.0/16"
    enable_dns_hostnames = true
    tags = {
        Name = "hcl_vpc"
        owner = "Narendra"
        env = "Prod"
    }
  
}
resource "aws_security_group" "HCl-SG" {
    vpc_id ="${aws_vpc.vpc.id}"
     tags = {
        Name = "hcl_SG"
        owner = "Narendra"
        env = "Prod"
    }
  
}

resource "aws_subnet" "HCL_subnet1" {
    cidr_block = "192.168.1.0/24"
    vpc_id ="${aws_vpc.vpc.id}"
     tags = {
        Name = "hcl_subnet1"
        owner = "Narendra"
        env = "Prod"
    }

  
}
