variable "api_management_name" {
  description = "(required)"
  type        = string
}

variable "app_id" {
  description = "(required)"
  type        = string
}

variable "app_secret" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
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

