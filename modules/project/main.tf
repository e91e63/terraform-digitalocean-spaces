resource "digitalocean_project" "main" {
  description = var.description
  environment = var.environment
  name        = var.name
  purpose     = var.purpose
  resources   = var.resources
}
