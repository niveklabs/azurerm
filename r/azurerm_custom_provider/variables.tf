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

variable "action" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      endpoint = string
      name     = string
    }
  ))
  default = []
}

variable "resource_type" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      endpoint     = string
      name         = string
      routing_type = string
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

variable "validation" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      specification = string
    }
  ))
  default = []
}

