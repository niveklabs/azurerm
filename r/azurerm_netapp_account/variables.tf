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

variable "active_directory" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      dns_servers         = list(string)
      domain              = string
      organizational_unit = string
      password            = string
      smb_server_name     = string
      username            = string
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

