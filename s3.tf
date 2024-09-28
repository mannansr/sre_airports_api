provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "airport_images" {
  bucket = "bangladesh-airport-images"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "airport-image-bucket"
    Environment = "dev"
  }
}
