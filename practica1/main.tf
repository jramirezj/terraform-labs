
resource "tls_private_key" "ssh_key_1" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "tls_private_key" "ssh_key_2" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


resource "local_file" "private_key_1" {
  filename        =  var.key_name_1
  content         = tls_private_key.ssh_key_1.private_key_pem
  file_permission = "0600"
}

resource "local_file" "private_key_2" {
  filename = var.key_name_2
  content  = tls_private_key.ssh_key_2.private_key_pem
  file_permission = "0600"
}


output "private_key_file_1" {
  value = local_file.private_key_1.filename
}

output "private_key_file_2" {
  value = local_file.private_key_2.filename
}

