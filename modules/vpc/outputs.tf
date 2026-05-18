output "vpc_id" {
  description = "The VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "The public subnet ID"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "The primary private subnet ID"
  value       = aws_subnet.private.id
}

output "private_subnet_id_2" {
  description = "The secondary private subnet ID"
  value       = aws_subnet.private_2.id
}