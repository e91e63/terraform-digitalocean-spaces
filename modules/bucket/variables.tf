variable "project_info" {
  type = object({
    id   = string
    name = string
  })
}

variable "bucket_conf" {
  type = object({
    region = string
  })
}
