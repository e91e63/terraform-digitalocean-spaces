resource "digitalocean_project" "this" {
  name        = var.name
  description = var.description
  purpose     = var.purpose
  environment = var.environment
  resources   = ["digitalocean_spaces_bucket.info_store.urn"]
}
