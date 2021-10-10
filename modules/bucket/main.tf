resource "digitalocean_project_resources" "main" {
  project = var.project_info.id
  resources = [
    digitalocean_spaces_bucket.main.urn
  ]
}

resource "digitalocean_spaces_bucket" "main" {
  acl           = "private"
  force_destroy = false
  name          = var.project_info.name
  region        = var.bucket_conf.region
  versioning {
    enabled = true
  }
}
