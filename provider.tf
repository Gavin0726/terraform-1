provider "aws" {
  profile = "default"
  region  = "us-east-1"
}


terraform {
    # backend "s3" {
    #     key = "terraform/tfstate.tfstate"
    #     bucket = "tfstate-backup-gavin"
    #     region = "us-east-1"
    # }
#   backend "remote" {
#    organization = "gavinstudy"
#   workspaces {
#      name = "test1"
#    }
#  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}