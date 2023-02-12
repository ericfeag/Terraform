resource "aws_s3_bucket_" "levelup_s3bucket" {
  bucket = "levelup_bucket_141"
  acl    = "private"

    tags = {
    Name        = "levelup_bucket_141"
  }
}