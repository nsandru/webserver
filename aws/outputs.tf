output "address" {
  value = "${aws_instance.web.public_dns}"
}
output "ipaddress" {
  value = "${aws_instance.web.public_ip}"
}
