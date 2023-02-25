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
  user_data_replace_on_change = true
#  user_data = <<-EOF
#                #!/bin/bash
#                cd /home/ubuntu
#                echo "<h1>Mensagem a ser mostrada</h1>" > index.html
#                nohup busybox httpd -f -p 8080 &
#                EOF
  tags = {
    Name = "Terraform Ansible Python"
  }
}
