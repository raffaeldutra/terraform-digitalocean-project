# Creating projects

```hcl
module "project" {
  source = "git@github.com:raffaeldutra/terraform-digitalocean-project.git"

  name        = "My Great Project"
  description = "Project description"
  purpose     = "Project purpose"
}
```
