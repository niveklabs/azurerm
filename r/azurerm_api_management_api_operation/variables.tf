variable "api_management_name" {
  description = "(required)"
  type        = string
}

variable "api_name" {
  description = "(required)"
  type        = string
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "display_name" {
  description = "(required)"
  type        = string
}

variable "method" {
  description = "(required)"
  type        = string
}

variable "operation_id" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "url_template" {
  description = "(required)"
  type        = string
}

variable "request" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      description = string
      header = list(object(
        {
          default_value = string
          description   = string
          name          = string
          required      = bool
          type          = string
          values        = set(string)
        }
      ))
      query_parameter = list(object(
        {
          default_value = string
          description   = string
          name          = string
          required      = bool
          type          = string
          values        = set(string)
        }
      ))
      representation = list(object(
        {
          content_type = string
          form_parameter = list(object(
            {
              default_value = string
              description   = string
              name          = string
              required      = bool
              type          = string
              values        = set(string)
            }
          ))
          sample    = string
          schema_id = string
          type_name = string
        }
      ))
    }
  ))
  default = []
}

variable "response" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      description = string
      header = list(object(
        {
          default_value = string
          description   = string
          name          = string
          required      = bool
          type          = string
          values        = set(string)
        }
      ))
      representation = list(object(
        {
          content_type = string
          form_parameter = list(object(
            {
              default_value = string
              description   = string
              name          = string
              required      = bool
              type          = string
              values        = set(string)
            }
          ))
          sample    = string
          schema_id = string
          type_name = string
        }
      ))
      status_code = number
    }
  ))
  default = []
}

variable "template_parameter" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      default_value = string
      description   = string
      name          = string
      required      = bool
      type          = string
      values        = set(string)
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

