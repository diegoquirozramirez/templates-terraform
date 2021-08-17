terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "terraform-user"
  region = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami = "ami-00399ec92321828f5"
  instance_type = "t2.micro"
  root_block_device {
    volume_size = 8
    volume_type = "gp2"
    delete_on_termination = true
  }

  tags = {
      Name = "ExampleAppServerInstance"
  }
}

resource "aws_vpc" "vpc_default" {
  cidr_block = "172.31.0.0/16"

  tags = {
      Name = "Vpc-default"
  }
}

resource "aws_subnet" "sub_net_default" {
  vpc_id = aws_vpc.vpc_default.id
  cidr_block = "172.31.16.0/20"
  availability_zone = "us-east-2b"

  tags = {
      Name = "AZ-b"
  }
}

resource "aws_security_group" "sg-default" {
  
}
