variable "account_name" {
  description = "(required)"
  type        = string
}

variable "local_file_path" {
  description = "(required)"
  type        = string
}

variable "remote_file_path" {
  description = "(required)"
  type        = string
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
      update = string
    }
  ))
  default = []
}

