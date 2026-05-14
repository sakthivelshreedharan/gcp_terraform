module "landing_zone" {
  source = "./modules/landing-zone"

  project_id        = var.project_id
  billing_account   = var.billing_account
  terraform_sa_name = "terraform-sa"
  state_bucket_name = "${var.project_id}-tfstate"
  region            = var.region
  labels = {
    environment = var.environment
    owner       = "platform-team"
  }
}

module "network" {
  source = "./modules/network"

  project_id   = var.project_id
  network_name = "${var.environment}-vpc"
  subnet_name  = "${var.environment}-subnet"
  region       = var.region
  subnet_cidr  = "10.10.0.0/24"
}

module "compute" {
  source = "./modules/compute"

  project_id    = var.project_id
  instance_name = "${var.environment}-vm"
  zone          = var.zone
  machine_type  = "e2-medium"
  subnet        = module.network.subnet_self_link
  network_tags  = ["ssh", "http"]
}

module "storage" {
}