variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_cidr_2" {
  description = "CIDR block for second private subnet (required by RDS)"
  type        = string
  default     = "10.0.3.0/24"
}

variable "availability_zone" {
  description = "Primary availability zone"
  type        = string
  default     = "us-east-2a"
}

variable "availability_zone_2" {
  description = "Secondary availability zone"
  type        = string
  default     = "us-east-2b"
}



