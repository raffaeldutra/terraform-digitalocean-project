variable "description" {
  type        = string
  description = "(Required) A description for this project"
}

variable "droplets" {
  type        = list
  description = "(Optional) List with all Droplets to be part of this project"
  default     = []
}

variable "environment" {
  type        = map
  description = "(optional) Edit values below for every environment name that you want"
  default = {
    "dev" = "Development"
    "hom" = "Homologation"
    "prd" = "Production"
  }
}

variable "name" {
  type        = string
  description = "(Required) Name for your project at Digital Ocean"
}

variable "purpose" {
  type        = string
  description = "(Required) The purpose for your project. (example: web-app)"
}