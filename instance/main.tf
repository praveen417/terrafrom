resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  #associate_public_ip_address = true
  availability_zone = "${var.azs}"
  tenancy           = "${var.tenancy}"
  key_name          = "dev_key"

}
