module "azurerm_batch_certificate" {
  source = "./azurerm/r/azurerm_batch_certificate"

  account_name         = null
  certificate          = null
  format               = null
  password             = null
  resource_group_name  = null
  thumbprint           = null
  thumbprint_algorithm = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
