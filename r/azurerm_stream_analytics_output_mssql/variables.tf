variable "database" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "password" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "server" {
  description = "(required)"
  type        = string
}

variable "stream_analytics_job_name" {
  description = "(required)"
  type        = string
}

variable "table" {
  description = "(required)"
  type        = string
}

variable "user" {
  description = "(required)"
  type        = string
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

