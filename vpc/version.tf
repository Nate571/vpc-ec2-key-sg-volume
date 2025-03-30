terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.79.0"
    }
  }
}

provider "aws" {
 region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "na-w7-terraformstatebucket"
    key    = "qa/terrafor.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}