variable "info_conf" {
  type = object({
    bucket_name = string
    key         = string
    region      = string
  })
}
