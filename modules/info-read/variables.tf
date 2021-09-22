variable "info_conf" {
  type = object({
    bucket = string
    key    = string
    region = string
  })
}
