provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "c0f4b6b77e6257b2cf70edc7787df42d50ba2c67"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-21 17:16:46"
    git_last_modified_by = "69325663+patricejames@users.noreply.github.com"
    git_modifiers        = "69325663+patricejames"
    git_org              = "patricejames"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "61ac835d-f89f-4223-8082-80036ad0bb75"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
