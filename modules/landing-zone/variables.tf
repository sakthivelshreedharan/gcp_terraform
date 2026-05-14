variable "project_id" {
  type = string
}

variable "terraform_sa_name" {
  type = string
}

variable "state_bucket_name" {
  type = string
}

variable "region" {
  type = string
}

variable "labels" {
  type = map(string)
}