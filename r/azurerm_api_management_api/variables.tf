variable "api_management_name" {
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

variable "name" {
  description = "(required)"
  type        = string
}

variable "path" {
  description = "(required)"
  type        = string
}

variable "protocols" {
  description = "(required)"
  type        = set(string)
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "revision" {
  description = "(required)"
  type        = string
}

variable "service_url" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "soap_pass_through" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "version" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "version_set_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "import" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      content_format = string
      content_value  = string
      wsdl_selector = list(object(
        {
          endpoint_name = string
          service_name  = string
        }
      ))
    }
  ))
  default = []
}

variable "subscription_key_parameter_names" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      header = string
      query  = string
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

