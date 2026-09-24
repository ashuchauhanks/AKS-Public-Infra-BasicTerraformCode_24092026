variable "resource_group_name" {
  description = " resource group name"
  type        = string
}
variable "location" {
  description = " location"
  type        = string
}

variable "tags" {
  description = " tags"
  type        = map(string)
}
