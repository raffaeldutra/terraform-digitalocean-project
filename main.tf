resource "digitalocean_project" "project" {
  name        = "${var.name}-${terraform.workspace}"
  description = var.description
  purpose     = var.purpose
  environment = terraform.workspace
  resources   = var.resources
}