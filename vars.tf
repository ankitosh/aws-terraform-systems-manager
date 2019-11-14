
# data "aws_caller_identity" "current" {}
# provider "aws" {
#   region     = "eu-west-1"

# }
# terraform {

#   backend "s3" {
#     bucket        = "YOUR-BUCKET-NAME-tf-state-dev"
#     key           = "patch-mgmt.tfstate"
#     region        = "eu-west-1"
#     encrypt       = true
#   }
# }
