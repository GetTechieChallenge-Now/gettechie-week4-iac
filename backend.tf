terraform {
  backend "s3" {
    bucket = "gettechie-week4-iac-statefile"
    key    = "vpc/prod/terraform.tfstate"
    region = "eu-west-2"
  }
}
