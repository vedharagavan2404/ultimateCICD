# Configure the AWS Provider
provider "aws" {
  region = "ca-central-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "demo-terraform-eks-state-vedha24"

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "terraform-eks-state-locks-new"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

