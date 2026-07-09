resource "aws_instance" "my_vm" {
  ami           = var.in_ami
  instance_type = var.in_instance

  subnet_id = var.in_subnet_id
  associate_public_ip_address = true

   tags = merge(
    var.in_tags,
    {Name = "${terraform.workspace}-vm"}
  )

}
