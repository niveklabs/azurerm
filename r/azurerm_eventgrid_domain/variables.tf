variable "input_schema" {
  description = "(optional)"
  type        = string
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

variable "input_mapping_default_values" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      data_version = string
      event_type   = string
      subject      = string
    }
  ))
  default = []
}

variable "input_mapping_fields" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      data_version = string
      event_time   = string
      event_type   = string
      id           = string
      subject      = string
      topic        = string
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

