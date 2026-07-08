
resource "random_string" "my-random-string" {
  length  = var.in-string-len
  special = true
  upper   = true
}
