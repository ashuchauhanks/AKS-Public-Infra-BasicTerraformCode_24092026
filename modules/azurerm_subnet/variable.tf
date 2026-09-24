variable "subnet_name" {
  description = "subnet name"
  type        = string
}
variable "resource_group_name" {
  description = "resource group name"
  type        = string
}
variable "vnet_name" {
  description = "virtual network name"
  type        = string
}
variable "address_prefixes" {
  description = "address prefixes"
  type        = list(string)
}
