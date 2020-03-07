variable "enabled" {
  description = "(required)"
  type        = bool
}

variable "network_security_group_id" {
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

variable "storage_account_id" {
  description = "(required)"
  type        = string
}

variable "version" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "retention_policy" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      days    = number
      enabled = bool
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

variable "traffic_analytics" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enabled               = bool
      workspace_id          = string
      workspace_region      = string
      workspace_resource_id = string
    }
  ))
  default = []
}

