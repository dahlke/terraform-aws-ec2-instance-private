variable "aws_region" {
  type    = string
}

variable "aws_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "tag_instance_name" {
  type    = string
}

variable "tag_app_name" {
  type    = string
}

variable "tag_department" {
  type    = string
}

variable "num_instances" {
  type    = string
  default = 1
}
