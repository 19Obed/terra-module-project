#creating a remote state file in S3 and using DynamoB as the key

terraform {
  backend "s3" {
    bucket = "webserver-terraform-bucket"
    key    = "DynamoDB/terraform.tfstate"
    region = "eu-west-2"
  }
}