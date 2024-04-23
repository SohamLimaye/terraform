terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-south-1"
}

resource "aws_instance" "tf_server" {
  ami           = "ami-007020fd9c84e18c7"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2_with_terraform2"
  }
}
