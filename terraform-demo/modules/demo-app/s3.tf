resource "aws_s3_bucket" "example" {
    bucket = "${var.env_name}-${var.bucket_name}"
    tags = {
      Name = "multistage-s3-bucket-amogh2699"
    }
}
