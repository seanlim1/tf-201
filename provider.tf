terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "sctp-ce4-tfstate-bucket"
    key    = "tf-301-slim.tfstate"
    region = "ap-southeast-1"
    dynamodb_table = "tf-state-lock"
  }
}

provider "aws" {
  region = "ap-southeast-1"
  # access_key = ""
  # secret_key = ""
}
