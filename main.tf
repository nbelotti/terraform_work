terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami		= "ami-0ec7896dee795dfa9"
  instance_type	= "t2.micro"


tags = {
	Name="aws_example"
}
}
