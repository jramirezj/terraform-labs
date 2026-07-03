resource "aws_s3_bucket" "media" {
  bucket = var.bucket_name
}

resource "aws_s3_object" "upload_media" {
  for_each = var.media_files

  bucket = aws_s3_bucket.media.id
  source = each.value

  # La función substr extrae una subcadena del texto: substr(cadena, inicio, longitud)
  # "../../assets/demo_func01.png" -> se convierte en "assets/demo_func01.png"
  key = substr(each.value, 6, 23)
}