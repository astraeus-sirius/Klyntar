resource "aws_s3_bucket_object" "index" {
  bucket       = module.venom_cloud.s3_bucket
  key          = "index.html"
  source       = "${path.cwd}/index.html"
  content_type = "text/html"
  etag         = filemd5("${path.cwd}/index.html") # changes file to latest version
}

resource "aws_s3_bucket_object" "error" {
  bucket       = module.venom_cloud.s3_bucket
  key          = "error.html"
  source       = "${path.cwd}/error.html"
  content_type = "text/html"
  etag         = filemd5("${path.cwd}/index.html") # changes file to latest version
}

resource "aws_s3_bucket_object" "picture" {
  bucket       = module.venom_cloud.s3_bucket
  key          = "venom and agony sleeping"
  source       = "${path.cwd}/venom_and_agony.jpg"
  content_type = "image/jpeg"
  etag         = filemd5("${path.cwd}/venom_and_agony.jpg") # changes file to latest version
}