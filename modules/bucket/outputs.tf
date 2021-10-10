output "info" {
  value = {
    bucket_name = digitalocean_spaces_bucket.main.name
    region      = digitalocean_spaces_bucket.main.region
  }
}
