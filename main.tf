provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_vpc" "vpc" {
    cird_block = "192.192.0.0/16"
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
