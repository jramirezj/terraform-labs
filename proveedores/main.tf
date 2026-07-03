resource "local_file" "password" {
  content  = "Password ${random_string.password_random.id}"
  filename = "password.txt"
}