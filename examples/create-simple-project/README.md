# Creating projects

```hcl
module "project" {
  source  = "raffaeldutra/project/digitalocean"
  version = "1.0.1"

  name        = "My Great Project"
  description = "Project description"
  purpose     = "Project purpose"
}
```
