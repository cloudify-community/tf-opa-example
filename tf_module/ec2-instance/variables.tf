variable "aws_region" {
  type        = string
  description = "AWS region to launch servers."
  default = "us-west-1"
}

variable "access_key" {
  type        = string
  description = "Access key for AWS"
}

variable "secret_key" {
  type        = string
  description = "Secret key for AWS"
}

variable "instance_type" {
  type        = string
  description = "Instance size"
  default = "t2.micro"
}

variable "ssh_ips" {
  type        = list(string)
  description = "List of IPs for SSH access"
  default = [ "192.168.1.100/32" ]
}
