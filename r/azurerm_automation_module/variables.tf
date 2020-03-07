variable "automation_account_name" {
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

variable "module_link" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      hash = list(object(
        {
          algorithm = string
          value     = string
        }
      ))
      uri = string
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

