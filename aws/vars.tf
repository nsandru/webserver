variable "awsregion" {
  description = "AWS region"
  default = "us-east-1"
}
#variable "awscredfile" {
#  description = "AWS credential file"
#}
variable "awsami" {
  description = "AMI type"
}
variable "awstype" {
  description = "AWS instance type"
  default = "t1.micro"
}
variable "awssubnetid" {
  description = "Subnet ID"
}
variable "awssecuritygrs" {
  description = "Security groups"
}
variable "awsprivkeyfile" {
  description = "Private key file"
}
variable "awskeyname" {
  description = "Key name"
}
variable "awsaccesskey" {
  description = "AWS access key"
}
variable "awssecretkey" {
  description = "AWS secret key"
}
