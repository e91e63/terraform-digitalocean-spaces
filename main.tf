module "info_store" {
  source = ".//modules/info-store"

  name    = var.name
  do_conf = var.do_conf
}

module "project" {
  source = ".//modules/project"

  name = var.name
}
