variable "assignable_scopes" {
  description = "(required)"
  type        = list(string)
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

variable "role_definition_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "scope" {
  description = "(required)"
  type        = string
}

variable "permissions" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      actions          = list(string)
      data_actions     = set(string)
      not_actions      = list(string)
      not_data_actions = set(string)
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

