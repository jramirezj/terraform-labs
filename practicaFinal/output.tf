
output "vpc_id" {
  description = "ID de la VPC"
  value       = module.network.vpc_id
}

output "subnet_id" {
  description = "ID de la Subnet"
  value       = module.network.subnet_id
}

output "instance_ip" {
  description = "IP pública de la instancia"
  value       = module.infra.instance_public_ip
}

output "instance_id" {
  description = "ID de la instancia EC2"
  value       = module.infra.instance_id
}

output "instance_name" {
  description = "Tag Name de la instancia"
  value       = module.infra.instance_name
}

output "instance_availability_zone" {
  description = "Availability Zone de la instancia"
  value       = module.infra.instance_availability_zone
}