module "droplet" {
  source = "git@github.com:raffaeldutra/tf-do-droplet.git"

  name = "web-dev"
  tags = [
    "environment:dev",
    "project:web-app",
    "team-web-app"
  ]
}

module "project" {
  source = "git@github.com:raffaeldutra/tf-do-project.git"

  name        = "My Great Project"
  description = "Project description"
  droplets    = [module.droplet.urn]
  purpose     = "Project purpose"
}