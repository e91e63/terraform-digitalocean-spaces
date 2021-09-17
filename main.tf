locals {
  do_conf_default = {
    region = "sfo2"
  }

  do_conf_merged = merge(
    local.do_conf_default,
    var.do_conf,
  )
}

module "info_store" {
  source = ".//modules/info-store"

  do_conf = local.do_conf_merged
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
