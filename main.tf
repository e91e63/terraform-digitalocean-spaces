locals {
  do_conf_default = {
    region = var.do_conf.default_region
  }

  do_conf_merged = merge(
    local.do_conf_default,
    var.do_conf,
  )
}

module "info_store" {
  source = "./modules/info-store"

  do_conf = local.do_conf_merged
  name    = var.project_conf.name
}

module "project" {
  source = "./modules/project"

  description = "Infrastructure"
  environment = "Production"
  name        = var.project_conf.name
  purpose     = "Operational / Developer tooling"
}
