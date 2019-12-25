
#data "aws_caller_identity" "current" {}
provider "aws" {
  access_key  = "AKIAVKZMETNYVBPCX3DL"#"${var.access_key}"
  secret_key  = "ECdW9Kkyq4fVK20EQ0IgUqf2+ian+cunMmgH+joi"#"${var.secret_key}"
  region     = "eu-west-1"

}
# terraform {

#   backend "s3" {
#     bucket        = "YOUR-BUCKET-NAME-tf-state-dev"
#     key           = "patch-mgmt.tfstate"
#     region        = "eu-west-1"
#     encrypt       = true
#   }
#}
