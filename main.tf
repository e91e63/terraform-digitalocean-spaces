module "info_store" {
  source = ".//modules/info-store"

  do_conf = var.do_conf
  name    = var.name
}

module "project" {
  source = ".//modules/project"

  description = "Infrastructure"
  environment = "Production"
  name        = var.name
  purpose     = "Operational / Developer tooling"
  resources   = [module.info_store.digitalocean_spaces_bucket_urn]
}
