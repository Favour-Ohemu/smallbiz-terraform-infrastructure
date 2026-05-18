output "web_server_public_ip" {
  description = "Public IP of the web server"
  value       = module.ec2.public_ip
}

output "db_endpoint" {
  value = module.rds.db_endpoint
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}