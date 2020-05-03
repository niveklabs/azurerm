variable "authorized_resource_ids" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "data_source_id" {
  description = "(required)"
  type        = string
}

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

variable "criteria" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      dimension = set(object(
        {
          name     = string
          operator = string
          values   = list(string)
        }
      ))
      metric_name = string
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

