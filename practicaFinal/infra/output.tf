output "instance_public_ip" {
  value = aws_instance.my_vm.public_ip
}

output "instance_id" {
  value = aws_instance.my_vm.id
}

output "instance_name" {
  value = aws_instance.my_vm.tags["Name"]
}

output "instance_availability_zone" {
  value = aws_instance.my_vm.availability_zone
}