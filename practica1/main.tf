
resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_sensitive_file" "private_key" {
  filename        =   "${var.input_1_key_name}.pem"
  content         = tls_private_key.ssh_key.private_key_pem
  file_permission = "0600"
}

output "private_key_file" {
  value = local_sensitive_file.private_key.filename
}


resource "aws_s3_bucket" "private_bucket" {
  bucket = "terralabs-${var.input_2_bucket_name}-private" 

  tags = {
    Name        = "Private Bucket Practica 1"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_public_access_block" "private_bucket" {
  bucket = aws_s3_bucket.private_bucket.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_object" "private_key" {
  bucket = aws_s3_bucket.private_bucket.id

  key    = local_sensitive_file.private_key.filename
  source = local_sensitive_file.private_key.filename

  server_side_encryption = "AES256"
}

output "bucket_url" {
  value = "${aws_s3_object.private_key.bucket}.s3.amazonaws.com/${aws_s3_object.private_key.key}"
}


resource "aws_vpc" "practica1_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "practica1-${var.input_3_student_name}"
  }
}

output "vpc_id" {
  value = "vpc id = ${aws_vpc.practica1_vpc.id}"
}




