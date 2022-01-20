terraform {

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "DevopsCommunity"
    workspaces {
      name = "TerraformBastion"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

}

provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "ap-southeast-1"
}