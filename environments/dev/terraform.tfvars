container_registries = {
  acr1 = {
    name                = "acrashudevka"
    resource_group_name = "rg-aks-dev"
    location            = "centralindia"
    sku                 = "Basic"
    admin_enabled       = false

    tags = {
      environment = "dev"
      managed_by  = "terraform"
      project     = "aks"
    }
  }
}