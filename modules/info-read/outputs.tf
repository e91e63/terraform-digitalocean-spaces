output "info" {
  sensitive = true
  value     = data.digitalocean_spaces_bucket_object.main.body
}
