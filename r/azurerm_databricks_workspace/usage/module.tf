module "azurerm_databricks_workspace" {
  source = "./azurerm/r/azurerm_databricks_workspace"

  location                    = null
  managed_resource_group_name = null
  name                        = null
  resource_group_name         = null
  sku                         = null
  tags                        = {}

  custom_parameters = [{
    no_public_ip        = null
    private_subnet_name = null
    public_subnet_name  = null
    virtual_network_id  = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
