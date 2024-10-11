terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
    #configuration option
    region = var.region
    # No secret and access keys.. use "aws configure"
}