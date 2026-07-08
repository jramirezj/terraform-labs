locals {
  filename = "test.txt"

}

module "my-random-string" {
 source = "./random"
in-string-len = 20

}

module "file-module" {
  source = "./file-module"

  in-filename = local.filename
  in-file-content = "Archivo 1 ${module.my-random-string.random_string}"
  in-file-permission = "0400"
}

module "file-module-dos" {
  source = "./file-module"
  
  in-filename = "dos.txt"
  in-file-content = "Archivo 2 ${module.my-random-string.random_string}"
  in-file-permission = "0600"

}



