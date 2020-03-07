variable "location" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "namespace_name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "apns_credential" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      application_mode = string
      bundle_id        = string
      key_id           = string
      team_id          = string
      token            = string
    }
  ))
  default = []
}

variable "gcm_credential" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      api_key = string
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

