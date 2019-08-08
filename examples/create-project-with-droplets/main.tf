module "droplet" {
  source  = "raffaeldutra/droplet/digitalocean"
  version = "1.0.2"

  name = "web-dev"
  tags = [
    "environment:dev",
    "project:web-app",
    "team-web-app"
  ]
}

module "project" {
  source  = "raffaeldutra/project/digitalocean"
  version = "1.0.1"

  name        = "My Great Project"
  description = "Project description"
  droplets    = [module.droplet.urn]
  purpose     = "Project purpose"
}