provider "aws" {
  region = "${var.awsregion}"
  access_key = "${var.awsaccesskey}"
  secret_key = "${var.awssecretkey}"
}

resource "aws_instance" "web" {
  ami = "${var.awsami}"
  instance_type = "${var.awstype}"
  associate_public_ip_address = true
  subnet_id = "${var.awssubnetid}"
  security_groups = ["${var.awssecuritygrs}"]
  key_name = "nicksandru1"
  tags {
    Name = "nicksandruweb"
  }

  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      "sudo apt update",
      "sudo apt -y install ansible",
      "sudo apt -y install certbot nginx",
    ]
  }

  connection {
    type = "ssh"
    private_key = "${file("${var.awsprivkeyfile}")}"
    user = "admin"
    timeout = "15m"
  }
}
