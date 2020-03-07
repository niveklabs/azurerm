module "azurerm_security_center_workspace" {
  source = "./azurerm/r/azurerm_security_center_workspace"

  scope        = null
  workspace_id = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
