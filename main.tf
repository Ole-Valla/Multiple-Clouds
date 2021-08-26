variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {
default = "eu-west-1"
}

provider "aws" {
access_key = "${var.aws_access_key}"
secret_key = "${var.aws_secret_key}"
region = "${var.aws_region}"
}

# aws amazon linux 
resource "aws_instance" "web" {
count ="2"
ami = "ami-xxx"
instance_type = "t3.micro"
tags{
name="webserver1"
identity = "45343"
location = "Glasgow"
}
}