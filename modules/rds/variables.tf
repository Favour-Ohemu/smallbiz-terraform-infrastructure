variable "project_name" { type = string }
variable "environment"  { type = string }
variable "vpc_id"       { type = string }

variable "private_subnet_id"   { type = string }
variable "private_subnet_id_2" { type = string }

variable "web_sg_id" {
  description = "Security group ID of the web server"
  type        = string
}

variable "db_username" {
  description = "Database master username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Database master password"
  type        = string
  sensitive   = true
}