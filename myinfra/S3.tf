resource "random_string" "random" {
  length  = 4
  upper   = false
  special = false
}

resource "aws_s3_bucket" "myterraform-S3" {
  bucket = "mytfs3-${random_string.random.id}"

  tags = {
    Name        = "myterraform-s3"
    Environment = "myterraform-Test"
    Project     = "myterraform-project"
  }
}