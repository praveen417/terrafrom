provider "aws" {
  region     = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}
module "instance" {
  source = "/home/pravpal/Desktop/learning/aws/module/instance"
}

module "vpc" {
  source = "/home/pravpal/Desktop/learning/aws/module/vpc"
}
