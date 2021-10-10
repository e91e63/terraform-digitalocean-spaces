data "digitalocean_spaces_bucket_object" "main" {
  bucket = var.info_conf.bucket_name
  key    = var.info_conf.key
  region = var.info_conf.region
}
