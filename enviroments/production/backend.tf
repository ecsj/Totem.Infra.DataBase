terraform {
  backend "s3" {
    bucket = "terraform-state-fiap"
    key    = "Prod/terraform-database.tfstate"
    region = "us-west-2"
  }
}