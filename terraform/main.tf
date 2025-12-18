
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "tf-remote-backet-2101999"
    key = "particle41/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

