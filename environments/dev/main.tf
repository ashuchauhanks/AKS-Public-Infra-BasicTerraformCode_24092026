
module "rg" {
  source              = "../../modules/azurerm_resource_group"
  resource_group_name = "rg-aks-dev"
  location            = "East US"
  tags = {
    environment = "dev"
    project     = "aks-infra"
  }

}

module "vnet" {
  depends_on          = [module.rg]
  source              = "../../modules/azurerm_virtual_network"
  vnet_name           = "vnet-aks-dev"
  resource_group_name = module.rg.rg_name
  location            = module.rg.location
  address_space       = ["10.0.0.0/16"]

}

module "subnet" {
  depends_on          = [module.vnet]
  source              = "../../modules/azurerm_subnet"
  subnet_name         = "subnet-aks-dev"
  resource_group_name = module.rg.rg_name
  vnet_name           = module.vnet.vnet_name
  address_prefixes    = ["10.0.1.0/24"]
}

module "log_analytics" {
  depends_on                    = [module.rg, module.vnet, module.subnet]
  source                        = "../../modules/azurerm_log_analytics_workspace"
  log_analytics_workpspace_name = "log-analytics-aks-dev"
  location                      = module.rg.location
  resource_group_name           = module.rg.rg_name
  sku                           = "PerGB2018"
  retention_in_days             = 30

}

module "aks" {
  depends_on                 = [module.rg, module.vnet, module.subnet, module.log_analytics]
  source                     = "../../modules/azurerm_kubernetes_cluster"
  name                       = "aks-dev"
  location                   = module.rg.location
  resource_group_name        = module.rg.rg_name
  dns_prefix                 = "aks-dev"
  subnet_id                  = module.subnet.subnet_id
  system_node_count          = 1
  system_vm_size             = "Standard_D2s_v7"
  worker_node_count          = 1
  worker_vm_size             = "Standard_D2s_v7"
  pod_cidr                   = "10.244.0.0/16"
  service_cidr               = "10.1.0.0/16"
  dns_service_ip             = "10.1.0.10"
  log_analytics_workspace_id = module.log_analytics.id
}

