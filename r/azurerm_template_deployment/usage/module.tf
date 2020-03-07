module "azurerm_template_deployment" {
  source = "./azurerm/r/azurerm_template_deployment"

  deployment_mode     = null
  name                = null
  parameters          = {}
  parameters_body     = null
  resource_group_name = null
  template_body       = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
