variable "do_conf" {
  default = {}
  type    = any
}

variable "project_conf" {
  type = object({
    name = string
  })
}
