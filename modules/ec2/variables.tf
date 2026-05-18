variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "public_subnet_id" {
  type = string
}

variable "key_name" {
  description = "Name of the EC2 key pair"
  type        = string
}

variable "iam_instance_profile" {
  description = "IAM instance profile to attach to EC2"
  type        = string
  default     = ""
}

variable "my_ip" {
  description = "Your public IP for SSH access"
  type        = string
}