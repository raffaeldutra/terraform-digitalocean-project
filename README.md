# Digital Ocean Project Terraform Module

![!](https://img.shields.io/github/repo-size/raffaeldutra/terraform-digitalocean-project)  ![!](https://img.shields.io/github/languages/top/raffaeldutra/terraform-digitalocean-project)  ![!](https://img.shields.io/github/v/tag/raffaeldutra/terraform-digitalocean-project)

This module creates projects at Digital Ocean for better organization using Droplets.

This module uses the following resources below:

* [Digital Ocean Project](https://www.terraform.io/docs/providers/do/r/project.html)

## Terraform version supported

* Terraform 0.12.*

## Quick usage

To create a simple project.

```hcl
module "project" {
  source  = "raffaeldutra/project/digitalocean"
  version = "1.0.1"

  name        = "My Great Project"
  description = "Project description"
  purpose     = "Project purpose"
}
```

If you want to associate Droplets in a project, you must use the the [Module for Droplets here](https://github.com/raffaeldutra/terraform-digitalocean-droplet) or, create the resources for Droplets.

The following code should be as below for Droplets creation:

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

Once all Droplets are created, then you can associate that Droplet(s) to a project.

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
