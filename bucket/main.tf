resource "aws_s3_bucket" "bucket123" {
  bucket = "abc"
  versioning {
    enabled = true
  }
}
