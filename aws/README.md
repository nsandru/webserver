Terraform scripts for creating an NGINX server (AWS)
====================================================

## Usage:

- copy the contents of the directory
- update the config file with the actual parameters
- run `. config`
- run `terraform init`
- run `terraform plan`
- run `terraform apply`
- the output lists the public DNS name and IP address of the new instance.

It is recommended to encrypt the config file after use.

The images (AMIs), subnets, security groups and VPCs have to be provisioned before the instances.

The instance contains a functional NGINX server with the default configuration and content.

