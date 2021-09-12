# This resources is imported
resource "aws_vpc" "test_vpc" {
  cidr_block = "192.168.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = true
}

output "vpc_id" {
  value = aws_vpc.test_vpc.id
  description = "VPC id."
  sensitive = false
}