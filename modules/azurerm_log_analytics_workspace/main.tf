resource "azurerm_log_analytics_workspace" "log_analytics_ws" {
  name                = var.log_analytics_workpspace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  retention_in_days   = var.retention_in_days
}


