resource "digitalocean_spaces_bucket" "main" {
  acl           = "private"
  force_destroy = false
  name          = var.name
  region        = var.do_conf.region
  versioning {
    enabled = true
  }
}
