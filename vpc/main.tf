resource "aws_vpc" "IBM_vpc" {
  cidr_block       = "${var.cidr_block}"
  instance_tenancy = "${var.instance_tenancy}"

}

resource "aws_subnet" "Test" {
  vpc_id     = "${aws_vpc.IBM_vpc.id}"
  cidr_block = "${var.subnet_cidr}"


}

resource "aws_security_group" "web_sg" {
  vpc_id = "${aws_vpc.IBM_vpc.id}"

}


resource "aws_security_group_rule" "allow_all" {
  type              = "egress"
  to_port           = 0
  protocol          = "tcp"
  from_port         = 0
  security_group_id = "${aws_security_group.web_sg.id}"

}

resource "aws_security_group_rule" "Allow_http" {
  type              = "ingress"
  to_port           = 443
  protocol          = "tcp"
  from_port         = 0
  security_group_id = "${aws_security_group.web_sg.id}"

}


resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.IBM_vpc.id}"
}

resource "aws_network_acl" "ncl" {
  vpc_id    = "${aws_vpc.IBM_vpc.id}"
  subnet_id = "${aws_subnet.Test.id}"
}

resource "aws_route_table" "rt" {
  vpc_id = "${aws_vpc.IBM_vpc.id}"

}

resource "aws_s3_bucket" "bucket123" {
  bucket = "abc"
}

resource "aws_efs_file_system" "ebs_data" {

}
resource "aws_ecs_cluster" "ecs_clu" {
  name = "${data.aws_ecs_cluster.ecs_httpd.ecs_clu}"
}
