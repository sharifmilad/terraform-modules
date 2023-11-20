resource "azurerm_container_registry" "acr" {
  name                     = "cr${var.name}${var.environment}${var.location}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  sku                      = var.sku
  admin_enabled            = var.admin_enabled
}