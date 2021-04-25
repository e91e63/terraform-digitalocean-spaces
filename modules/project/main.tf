resource "digitalocean_project" "this" {
  name        = var.name
  description = "Infrastructure"
  purpose     = "Operational / Developer tooling"
  environment = "Production"
  resources   = [digitalocean_spaces_bucket.info_store.urn]
}
