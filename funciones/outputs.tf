output "bucket_urls" {
  description = "Direcciones S3 de los objetos cargados"
  value = {
    for k, v in aws_s3_object.upload_media : k => "${v.bucket}.s3.amazonaws.com/${v.key}"
  }
}
