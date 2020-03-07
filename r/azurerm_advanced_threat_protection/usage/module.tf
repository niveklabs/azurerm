module "azurerm_advanced_threat_protection" {
  source = "./azurerm/r/azurerm_advanced_threat_protection"

  enabled            = null
  target_resource_id = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
