variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "asia-south1"
}

variable "zone" {
  type    = string
  default = "asia-south1-a"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "billing_account" {
  type        = string
  description = "Billing account ID (optional for existing projects)"
  default     = ""
}