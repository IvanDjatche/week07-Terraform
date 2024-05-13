# resource "aws_s3_bucket" "bucket" {
#   bucket = "demo_bucket"  # Specify a globally unique bucket name


# }

# Configure Terraform backend to use S3 you can create file call backend.tf
terraform {
  backend "s3" {
    bucket         = "week07"  # Specify the name of your S3 bucket
    key            = "statefile/terraform-code"         # Specify the name of the state file
    region         = "us-east-1"                 # Specify the AWS region of the bucket
    dynamodb_table = "terraform_lock"

  }
}