variable "password" {
    type = string
    default = "S3cr3tP@ssw0rd"
}

variable "users" {
  type    = list(string)
  default = ["user01", "user04"]
}