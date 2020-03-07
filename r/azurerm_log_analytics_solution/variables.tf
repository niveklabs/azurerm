variable "location" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "solution_name" {
  description = "(required)"
  type        = string
}

variable "workspace_name" {
  description = "(required)"
  type        = string
}

variable "workspace_resource_id" {
  description = "(required)"
  type        = string
}

variable "plan" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      name           = string
      product        = string
      promotion_code = string
      publisher      = string
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

