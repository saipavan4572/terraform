terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.51.1"
    }
  }
}
# to provide authentication.
provider "aws" {
  region = "us-east-1"
}
