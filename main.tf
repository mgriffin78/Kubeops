terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.37.0"
    }
  }
}
cloud {
    organization = "mgriffin78"

    workspaces {
      name = "IAC_Example"
    }
  }

provider "aws" {
  region  = "us-east-1"
}
resource "aws_instance" "linuxvms" {
  for_each = var.ec2_map
  ami           = "ami-0742b4e673072066f"
  instance_type = "t2.micro"
  tags = {
    Name = each.value.Name
    env = each.value.env
    app = each.value.app
  }
}