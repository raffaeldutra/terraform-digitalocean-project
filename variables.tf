variable "name" {
  type        = string
  description = "Name for your project at Digital Ocean"
  default     = "Project [terraform.workspace]"
}

variable "description" {
  type        = string
  description = "A description for this project"
}

variable "purpose" {
  type        = string
  description = "The purpose for your project. (example: web-app)"
}