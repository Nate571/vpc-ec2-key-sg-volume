terraform {
  backend "s3" {
    bucket       = "na-w7-terraformstatebucket"
    key          = "dev/terrafor.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
