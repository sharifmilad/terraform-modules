resource "azurerm_windows_web_app" "windows-app" {
  name                = var.app.name
  resource_group_name = var.app.resource_group
  location            = var.app.location
  service_plan_id     = var.app.plan.id

  site_config {}
}