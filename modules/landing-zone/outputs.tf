output "terraform_service_account_email" {
  value = google_service_account.terraform_sa.email
}

output "tf_state_bucket" {
  value = google_storage_bucket.tf_state.name
}