resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  associate_public_ip_address = true
  availability_zone = "${var.azs}"
  tenancy           = "${var.tenancy}"
  key_name          = "dev_key"
  user_data = <<-EOT
		#! /bin/bash
                sudo apt-get update
		sudo apt-get install -y apache2
		sudo systemctl start apache2
		sudo systemctl enable apache2
		echo "<h1>Deployed via Terraform</h1>" >> /var/www/html/index.html
	EOT
}
resource "aws_instance" "web1" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  associate_public_ip_address = true
  availability_zone = "${var.azs}"
  tenancy           = "${var.tenancy}"
  key_name          = "dev_key" 
  user_data = "${file("/home/pravpal/Desktop/learning/aws/module/user_data/apache_install.sh")}"
}

