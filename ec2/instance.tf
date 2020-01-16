provider "aws" {
  region = "${var.region}"
}
#module "instance" {
#  source = "/home/pravpal/Desktop/learning/aws/module/instance"
#}

#module "vpc" {
#  source = "/home/pravpal/Desktop/learning/aws/module/vpc"
#}
#module "ECS" {
#  source = "/home/pravpal/Desktop/learning/aws/module/ecs"
#}
#module "elb" {
#  source = "/home/pravpal/Desktop/learning/aws/module/elb"
#}
module "bucket" {
  source = "/home/pravpal/Desktop/learning/aws/module/bucket"
}
module "block-storage" {
  source = "/home/pravpal/Desktop/learning/aws/module/block-storage"
}
