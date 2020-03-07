variable "event_hub_partition_count" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "event_hub_retention_in_days" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "location" {
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

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "endpoint" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      batch_frequency_in_seconds = number
      connection_string          = string
      container_name             = string
      encoding                   = string
      file_name_format           = string
      max_chunk_size_in_bytes    = number
      name                       = string
      type                       = string
    }
  ))
  default = []
}

variable "fallback_route" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      condition      = string
      enabled        = bool
      endpoint_names = list(string)
      source         = string
    }
  ))
  default = []
}

variable "file_upload" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      connection_string  = string
      container_name     = string
      default_ttl        = string
      lock_duration      = string
      max_delivery_count = number
      notifications      = bool
      sas_ttl            = string
    }
  ))
  default = []
}

variable "ip_filter_rule" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      action  = string
      ip_mask = string
      name    = string
    }
  ))
  default = []
}

variable "route" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      condition      = string
      enabled        = bool
      endpoint_names = list(string)
      name           = string
      source         = string
    }
  ))
  default = []
}

variable "sku" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      capacity = number
      name     = string
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

