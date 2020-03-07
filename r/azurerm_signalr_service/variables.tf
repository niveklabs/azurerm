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

variable "cors" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      allowed_origins = set(string)
    }
  ))
  default = []
}

variable "features" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      flag  = string
      value = string
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

