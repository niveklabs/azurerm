variable "gallery_name" {
  description = "(required)"
  type        = string
}

variable "image_name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "tags_filter" {
  description = "(optional)"
  type        = map(string)
  default     = null
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

