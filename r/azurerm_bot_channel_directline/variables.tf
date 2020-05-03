variable "bot_name" {
  description = "(required)"
  type        = string
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "site" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      enabled                         = bool
      enhanced_authentication_enabled = bool
      id                              = string
      key                             = string
      key2                            = string
      name                            = string
      trusted_origins                 = set(string)
      v1_allowed                      = bool
      v3_allowed                      = bool
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

