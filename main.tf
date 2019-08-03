module "droplet" {
  source = "git::https://github.com/raffaeldutra/tf-do-droplet?ref=dev"
}

resource "digitalocean_project" "project" {
  name        = "${var.name}-${terraform.workspace}"
  description = var.description
  purpose     = var.purpose
  environment = terraform.workspace
  resources   = [module.droplet.urn]
}