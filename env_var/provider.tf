provider "aws" {
  region            = "${var.region}"
  availability_zone = "${var.availability_zone}"
}
