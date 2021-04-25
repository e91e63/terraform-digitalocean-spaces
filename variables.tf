variable "name" {
  default = "k8s"
  type = string
}

variable "do_conf" {
  default = {}
  type    = object({})
}
