variable "api_management_name" {
  description = "(required)"
  type        = string
}

variable "buffered" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "description" {
  description = "(optional)"
  type        = string
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

variable "application_insights" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      instrumentation_key = string
    }
  ))
  default = []
}

variable "eventhub" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      connection_string = string
      name              = string
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

