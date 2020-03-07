variable "name" {
  description = "(required)"
  type        = string
}

variable "recovery_vault_name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "timezone" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "backup" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      frequency = string
      time      = string
    }
  ))
}

variable "retention_daily" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      count = number
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

