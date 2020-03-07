variable "location" {
  description = "(required)"
  type        = string
}

variable "max_size_bytes" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "max_size_gb" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "server_name" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "zone_redundant" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "per_database_settings" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      max_capacity = number
      min_capacity = number
    }
  ))
}

variable "sku" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      capacity = number
      family   = string
      name     = string
      tier     = string
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

