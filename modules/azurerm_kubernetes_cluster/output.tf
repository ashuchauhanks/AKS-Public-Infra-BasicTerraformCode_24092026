output "id" {
  value = azurerm_kubernetes_cluster.akscluster.id
}

output "name" {
  value = azurerm_kubernetes_cluster.akscluster.name
}

output "fqdn" {
  value = azurerm_kubernetes_cluster.akscluster.fqdn
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.akscluster.kube_config_raw
  sensitive = true
}

