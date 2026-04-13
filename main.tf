provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "portfolio_bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_public_access_block" "portfolio_bucket_public_access" {
  bucket = aws_s3_bucket.portfolio_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_website_configuration" "portfolio_website" {
  bucket = aws_s3_bucket.portfolio_bucket.id

  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_bucket_policy" "portfolio_bucket_policy" {
  bucket = aws_s3_bucket.portfolio_bucket.id

  depends_on = [aws_s3_bucket_public_access_block.portfolio_bucket_public_access]

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.portfolio_bucket.arn}/*"
      }
    ]
  })
}

resource "aws_s3_object" "index_file" {
  bucket       = aws_s3_bucket.portfolio_bucket.id
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html"
  etag         = filemd5("index.html")
}

resource "aws_s3_object" "style_file" {
  bucket       = aws_s3_bucket.portfolio_bucket.id
  key          = "style.css"
  source       = "style.css"
  content_type = "text/css"
  etag         = filemd5("style.css")
}