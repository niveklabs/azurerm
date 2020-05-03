variable "cache_name" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "target_host_name" {
  description = "(required)"
  type        = string
}

variable "usage_model" {
  description = "(required)"
  type        = string
}

variable "namespace_junction" {
  description = "nested mode: NestingSet, min items: 1, max items: 10"
  type = set(object(
    {
      namespace_path = string
      nfs_export     = string
      target_path    = string
    }
  ))
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

