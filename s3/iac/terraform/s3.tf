resource "aws_s3_bucket" "my-s3-bucket" {
  bucket = "my-tf-test-bucket-20260224-abc123"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}