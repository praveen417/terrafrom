
variable "ami" {
  default = "ami-00dc79254d0461090"
}

variable "azs" {
  default = "us-east-1a"
}
variable "tenancy" {
  default = "shared"
}

variable "instance_type" {
  default = "t2.micro"
}
variable "instance_count" {
  default = "3"
}
