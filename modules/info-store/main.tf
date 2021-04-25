resource "digitalocean_spaces_bucket" "info_store" {
  name   = var.name
  region = var.do_conf.region
}
