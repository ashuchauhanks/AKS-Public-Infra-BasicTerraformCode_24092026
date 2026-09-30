output "acr_ids" {
  value = {
    for key, acr in azurerm_container_registry.acr :
    key => acr.id
  }
}

output "acr_login_servers" {
  value = {
    for key, acr in azurerm_container_registry.acr :
    key => acr.login_server
  }
}