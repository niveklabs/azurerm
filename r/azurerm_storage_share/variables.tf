variable "metadata" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "quota" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "storage_account_name" {
  description = "(required)"
  type        = string
}

variable "acl" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      access_policy = list(object(
        {
          expiry      = string
          permissions = string
          start       = string
        }
      ))
      id = string
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

