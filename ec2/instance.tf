provider "aws" {
  region     = "${var.region}"
}
module "instance" {
  source = "/home/pravpal/Desktop/learning/aws/module/instance"
}

#module "vpc" {
#  source = "/home/pravpal/Desktop/learning/aws/module/vpc"
#}
