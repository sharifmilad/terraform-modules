resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.name}-${var.environment}-${var.location}"
  location = var.location
}