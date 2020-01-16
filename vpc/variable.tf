variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "instance_tenancy" {
  default = "default"
}

variable "subnet_cidr" {
  default = "10.0.10.0/24"
}

#data "aws_ecs_cluster" "ecs_httpd" {
#  cluster_name = "ecs_http_prd"
#}
