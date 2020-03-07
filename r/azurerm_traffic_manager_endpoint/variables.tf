variable "endpoint_location" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "endpoint_status" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "geo_mappings" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "min_child_endpoints" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "priority" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "profile_name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "target" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "target_resource_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "type" {
  description = "(required)"
  type        = string
}

variable "weight" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "custom_header" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      name  = string
      value = string
    }
  ))
  default = []
}

variable "subnet" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      first = string
      last  = string
      scope = number
    }
  ))
  default = []
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

