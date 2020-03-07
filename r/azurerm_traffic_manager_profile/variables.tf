variable "name" {
  description = "(required)"
  type        = string
}

variable "profile_status" {
  description = "(optional)"
  type        = string
  default     = null
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

variable "traffic_routing_method" {
  description = "(required)"
  type        = string
}

variable "dns_config" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      relative_name = string
      ttl           = number
    }
  ))
}

variable "monitor_config" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      expected_status_code_ranges  = list(string)
      interval_in_seconds          = number
      path                         = string
      port                         = number
      protocol                     = string
      timeout_in_seconds           = number
      tolerated_number_of_failures = number
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

