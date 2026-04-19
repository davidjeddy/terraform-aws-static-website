resource "aws_s3_object" "text_html" {
  for_each = fileset("${var.web_path}/", "*.html")

  content_type           = "text/html"
  server_side_encryption = "AES256"

  etag   = filemd5("${var.web_path}/${each.value}")
  source = "${var.web_path}/${each.value}"
  key    = each.value

  bucket = module.cloudfront.s3_bucket
}

resource "aws_s3_object" "image_ico" {
  for_each = fileset("${var.web_path}/", "*.ico")

  content_type           = "image/x-icon"
  server_side_encryption = "AES256"

  etag   = filemd5("${var.web_path}/${each.value}")
  source = "${var.web_path}/${each.value}"
  key    = each.value

  bucket = module.cloudfront.s3_bucket
}

resource "aws_s3_object" "images_gif" {
  for_each = fileset("${var.web_path}/index_files/", "*.gif")

  content_type           = "image/gif"
  server_side_encryption = "AES256"

  etag   = filemd5("${var.web_path}/index_files/${each.value}")
  source = "${var.web_path}/index_files/${each.value}"
  key    = "index_files/${each.value}"

  bucket = module.cloudfront.s3_bucket
}

resource "aws_s3_object" "images_jpg" {
  for_each = fileset("${var.web_path}/index_files/", "*.jpg")

  content_type           = "image/jpg"
  server_side_encryption = "AES256"

  etag   = filemd5("${var.web_path}/index_files/${each.value}")
  source = "${var.web_path}/index_files/${each.value}"
  key    = "index_files/${each.value}"

  bucket = module.cloudfront.s3_bucket
}

resource "aws_s3_object" "images_png" {
  for_each = fileset("${var.web_path}/index_files/", "*.png")

  content_type           = "image/png"
  server_side_encryption = "AES256"

  etag   = filemd5("${var.web_path}/index_files/${each.value}")
  source = "${var.web_path}/index_files/${each.value}"
  key    = "index_files/${each.value}"

  bucket = module.cloudfront.s3_bucket
}

resource "aws_s3_object" "styles_css" {
  for_each = fileset("${var.web_path}/index_files/", "*.css")

  content_type           = "text/css"
  server_side_encryption = "AES256"

  etag   = filemd5("${var.web_path}/index_files/${each.value}")
  source = "${var.web_path}/index_files/${each.value}"
  key    = "index_files/${each.value}"

  bucket = module.cloudfront.s3_bucket
}

resource "aws_s3_object" "javascripts" {
  for_each = fileset("${var.web_path}/index_files/", "*.js")

  content_type           = "text/javascript"
  server_side_encryption = "AES256"

  etag   = filemd5("${var.web_path}/index_files/${each.value}")
  source = "${var.web_path}/index_files/${each.value}"
  key    = "index_files/${each.value}"

  bucket = module.cloudfront.s3_bucket
}

resource "aws_s3_object" "font_ttf" {
  for_each = fileset("${var.web_path}/index_files/", "*.ttf")

  content_type           = "font/ttf"
  server_side_encryption = "AES256"

  etag   = filemd5("${var.web_path}/index_files/${each.value}")
  source = "${var.web_path}/index_files/${each.value}"
  key    = "index_files/${each.value}"

  bucket = module.cloudfront.s3_bucket
}

resource "aws_s3_object" "font_woff" {
  for_each = fileset("${var.web_path}/index_files/", "*.woff")

  content_type           = "font/woff"
  server_side_encryption = "AES256"

  etag   = filemd5("${var.web_path}/index_files/${each.value}")
  source = "${var.web_path}/index_files/${each.value}"
  key    = "index_files/${each.value}"

  bucket = module.cloudfront.s3_bucket
}

resource "aws_s3_object" "font_woff2" {
  for_each = fileset("${var.web_path}/index_files/", "*.woff2")

  content_type           = "font/woff2"
  server_side_encryption = "AES256"

  etag   = filemd5("${var.web_path}/index_files/${each.value}")
  source = "${var.web_path}/index_files/${each.value}"
  key    = "index_files/${each.value}"

  bucket = module.cloudfront.s3_bucket
}
