variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "enabled" {
  description = "(optional)"
  type        = bool
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

variable "scopes" {
  description = "(required)"
  type        = set(string)
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
      action_group_id    = string
      webhook_properties = map(string)
    }
  ))
  default = []
}

variable "criteria" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      caller            = string
      category          = string
      level             = string
      operation_name    = string
      resource_group    = string
      resource_id       = string
      resource_provider = string
      resource_type     = string
      status            = string
      sub_status        = string
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

