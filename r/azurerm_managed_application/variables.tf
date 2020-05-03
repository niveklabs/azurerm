variable "application_definition_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "kind" {
  description = "(required)"
  type        = string
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "managed_resource_group_name" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "parameters" {
  description = "(optional)"
  type        = map(string)
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

variable "plan" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      name           = string
      product        = string
      promotion_code = string
      publisher      = string
      version        = string
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

