terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2"
    }
  }
  required_version = "~> 1"
}

data "digitalocean_spaces_bucket_object" "main" {
  bucket = var.info_conf.bucket_name
  key    = var.info_conf.key
  region = var.info_conf.region
}
