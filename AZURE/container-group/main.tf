resource "azurerm_container_group" "this" {

  name                = "ci-${var.name}-${var.environment}-${var.location}"
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = var.os_type
  ip_address_type     = var.ip_address_type
  dns_name_label      = var.dns_name_label


  dynamic "container" {
    for_each = var.containers
    content {
      name   = container.key
      image  = container.value.image
      cpu    = container.value.cpu
      memory = container.value.memory

      dynamic "ports" {
        for_each = container.value.ports
        content {
          port     = ports.value.port
          protocol = ports.value.protocol
        }
      }
    }
  }
}