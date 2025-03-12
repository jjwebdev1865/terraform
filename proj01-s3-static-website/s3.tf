resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "static_website" {
  # provides a unique id for a bucket
  bucket = "terraform-course-project-1-${random_id.bucket_suffix.hex}"
}