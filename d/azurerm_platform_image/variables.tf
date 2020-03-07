variable "location" {
  description = "(required)"
  type        = string
}

variable "offer" {
  description = "(required)"
  type        = string
}

variable "publisher" {
  description = "(required)"
  type        = string
}

variable "sku" {
  description = "(required)"
  type        = string
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

