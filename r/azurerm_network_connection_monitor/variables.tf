variable "auto_start" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "interval_in_seconds" {
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

variable "network_watcher_name" {
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

variable "destination" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      address            = string
      port               = number
      virtual_machine_id = string
    }
  ))
}

variable "source" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      port               = number
      virtual_machine_id = string
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

