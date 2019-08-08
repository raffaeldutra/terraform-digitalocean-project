# Creating projects with Droplets

```hcl
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
```

Then you can associate that droplet to a project.

```hcl
module "project" {
  source  = "raffaeldutra/project/digitalocean"
  version = "1.0.1"

  name        = "My Great Project"
  description = "Project description"
  droplets    = [module.droplet.urn]
  purpose     = "Project purpose"
}
```