variable "ip" {}
provider "aws"{
  region = "us-east-1"
}

data "aws_ami" "centos-nginx"{
  owners = ["self"]
  most_recent = true
  filter {
    name = "name"
    values = ["centos7-nginx"]
  }
}

resource "aws_instance" "centos-nginx" {
  ami = "${data.aws_ami.centos-nginx.id}"
  instance_type = "t2.micro"
  security_groups = ["allow_http"]
  key_name = "aws"
}

resource "aws_security_group" "allow_http"{
  name = "allow_http"
  description = "Allow HTTP inbound traffic from host that build centos7-nginx ami"
  ingress {
    from_port = 80
    protocol = "TCP"
    to_port = 80
    cidr_blocks = ["${var.ip}/32"]
  }
  ingress {
    from_port = 22
    protocol = "TCP"
    to_port = 22
    cidr_blocks = ["${var.ip}/32"]
  }

}

output "centos-nginx.ip" {
  value = "${aws_instance.centos-nginx.public_ip}"
}
