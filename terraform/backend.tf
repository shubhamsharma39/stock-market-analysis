# Terraform Backend Configuration
# Remote state stored in S3 (ap-south-1)

terraform {
  backend "s3" {
    bucket = "stock-dashboard-terraform-state-shubham"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    encrypt = true

    # New locking mechanism (no DynamoDB needed)
    use_lockfile = true
  }
}
