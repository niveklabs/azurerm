variable "connection_string" {
  description = "(required)"
  type        = string
}

variable "expiry" {
  description = "(required)"
  type        = string
}

variable "https_only" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "start" {
  description = "(required)"
  type        = string
}

variable "permissions" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      add     = bool
      create  = bool
      delete  = bool
      list    = bool
      process = bool
      read    = bool
      update  = bool
      write   = bool
    }
  ))
}

variable "resource_types" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      container = bool
      object    = bool
      service   = bool
    }
  ))
}

variable "services" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      blob  = bool
      file  = bool
      queue = bool
      table = bool
    }
  ))
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      read = string
    }
  ))
  default = []
}

