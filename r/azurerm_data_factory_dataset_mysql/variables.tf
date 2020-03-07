variable "additional_properties" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "annotations" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "data_factory_name" {
  description = "(required)"
  type        = string
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "folder" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "linked_service_name" {
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

variable "table_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "schema_column" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      description = string
      name        = string
      type        = string
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

