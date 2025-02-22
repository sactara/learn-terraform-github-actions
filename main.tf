terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = "~> 0.14"

  backend "remote" {
    organization = "GHTF"

    workspaces {
      name = "git-terra-actions"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}



resource "aws_instance" "NewMediuminstance" {
  ami = "ami-09e67e426f25ce0d7"
  instance_type = "t2.medium"
  tags = {
    Name = "EC2 Instance Test"
  }
}
