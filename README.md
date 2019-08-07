# Digital Ocean Project Terraform Module

This module creates projects at Digital Ocean for better organization using Droplets.

This module use the following resource below:

* [Digital Ocean Project](https://www.terraform.io/docs/providers/do/r/project.html)

## Terraform version supported

* Terraform 0.12.*

## Quick usage

To create a simple project.

```hcl
module "project" {
  source = "git@github.com:raffaeldutra/tf-do-project.git"

  name        = "My Great Project"
  description = "Project description"
  purpose     = "Project purpose"
}
```

If you want associate Droplets to this project, first you must use the [Module for Droplets here](git@github.com:raffaeldutra/tf-do-droplet.git) or, create the resources for Droplets.

The following code should be as below for Droplets creation:

```hcl
module "droplet" {
  source = "git@github.com:raffaeldutra/tf-do-droplet.git"

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
  source = "git@github.com:raffaeldutra/tf-do-project.git"

  name        = "My Great Project"
  description = "Project description"
  droplets    = [module.droplet.urn]
  purpose     = "Project purpose"
}
```
