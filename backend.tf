# provider "aws" {
#   region = "us-west-2"
# }

# store tfstate in s3 and locking information in DynamoDB
terraform {
  backend "s3" {
    encrypt = true
    bucket = "cdp-terraform-state-aaeznt"
    region = "us-west-2"
    dynamodb_table = "terraform-state-lock-dynamo"
    key = "terraform-state/terraform.tfstate"
  }
}