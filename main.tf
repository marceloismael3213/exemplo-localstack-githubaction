resource "aws_s3_bucket" "example" {
  bucket = "bucket-localstack-teste"

  force_destroy = true

  lifecycle {
    ignore_changes = [
      tags_all
    ]
  }
}
