output "info" {
  sensitive = true
  value     = jsondecode(data.digitalocean_spaces_bucket_object.main.body)
}
