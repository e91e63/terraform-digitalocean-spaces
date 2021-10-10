variable "name" {
  type = string
}

variable "do_conf" {
  type = object({
    region = string
  })
}
