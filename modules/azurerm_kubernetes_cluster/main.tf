resource "azurerm_kubernetes_cluster" "akscluster" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  node_provisioning_profile {
    mode = "Manual"
  }
  
  default_node_pool {
    name           = "system"
    node_count     = var.system_node_count
    vm_size        = var.system_vm_size
    vnet_subnet_id = var.subnet_id

    type = "VirtualMachineScaleSets"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin      = "azure"
    network_plugin_mode = "overlay"

    pod_cidr = var.pod_cidr

    service_cidr   = var.service_cidr
    dns_service_ip = var.dns_service_ip

    load_balancer_sku = "standard"
  }

  role_based_access_control_enabled = true

  oms_agent {
    log_analytics_workspace_id = var.log_analytics_workspace_id
  }
}


resource "azurerm_kubernetes_cluster_node_pool" "worker" {
  name                  = "worker"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.akscluster.id
  vm_size               = var.worker_vm_size
  node_count            = var.worker_node_count
  vnet_subnet_id        = var.subnet_id

  mode = "User"
}