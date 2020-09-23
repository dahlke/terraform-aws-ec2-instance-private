provider "aws" {
  region = var.aws_region
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "demo" {
  count = var.num_instances

  instance_type          = var.aws_instance_type
  ami                    = data.aws_ami.ubuntu.id
  tags                   =  {
    instanceName = var.tag_instance_name
    appName = var.tag_app_name
    department = var.tag_department
  }
}
