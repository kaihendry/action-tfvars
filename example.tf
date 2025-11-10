variable "AWS_ACCOUNT" {
  description = "AWS Account ID from lookup action"
  type        = string
}

variable "AWS_REGION" {
  description = "AWS Region from lookup action"
  type        = string
}

# Output to verify the variables are set correctly
output "account_info" {
  value = {
    account = var.AWS_ACCOUNT
    region  = var.AWS_REGION
  }
  description = "AWS Account information from lookup action"
}

# Example of building ARN with the account variable
output "example_bucket_arn" {
  value       = "arn:aws:s3:::my-bucket-${var.AWS_ACCOUNT}"
  description = "Example ARN using the account variable"
}
