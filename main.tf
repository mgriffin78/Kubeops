terraform {
  cloud {
    organization = "mgriffin78"

    workspaces {
      name = "IAC_Example"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.37.0"
    }
  }
}
#small updated made
provider "aws" {
  region  = "us-east-1"
}
resource "aws_instance" "linuxvms" {
  for_each = var.ec2_map
  ami           = "ami-0742b4e673072066f"
  instance_type = "t3.small"
  tags = {
    Name = each.value.Name
    env = each.value.env
    app = each.value.app
  }
}
