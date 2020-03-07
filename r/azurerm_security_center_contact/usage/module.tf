module "azurerm_security_center_contact" {
  source = "./azurerm/r/azurerm_security_center_contact"

  alert_notifications = null
  alerts_to_admins    = null
  email               = null
  phone               = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
