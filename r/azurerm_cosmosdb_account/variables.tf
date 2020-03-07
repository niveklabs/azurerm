variable "enable_automatic_failover" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "enable_multiple_write_locations" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "ip_range_filter" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "is_virtual_network_filter_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "kind" {
  description = "(optional)"
  type        = string
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

variable "offer_type" {
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

variable "capabilities" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      name = string
    }
  ))
  default = []
}

variable "consistency_policy" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      consistency_level       = string
      max_interval_in_seconds = number
      max_staleness_prefix    = number
    }
  ))
}

variable "geo_location" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      failover_priority = number
      id                = string
      location          = string
      prefix            = string
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

variable "virtual_network_rule" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      id = string
    }
  ))
  default = []
}

