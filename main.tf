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
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-00eeedc4036573771"
  instance_type = "t2.micro"
  key_name = "aws-ohiio"
  tags = {
    Name = "Primeira instância"
  }
}
