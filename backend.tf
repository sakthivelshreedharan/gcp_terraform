terraform {
  backend "gcs" {
    bucket = "my-terraform-state-bucket"
    prefix = "landing-zone/dev"
  }
}