variable "name" {
    type = string
    sensitive = false
    default = "defult"
    description = "Container registry name"
}
variable "environment" {
  type = string
  sensitive = false
  default = "dev"
  description = "Environment"
}
variable "resource_group_name" {
  type = string
  sensitive = false
  description = "Resource group name"
}
variable "location" {
  type = string
  sensitive = false
  description = "Location"
}
variable "sku" {
  type = string
  sensitive = false
  default = "Basic"
  description = "Container registry sku"
}
variable "admin_enabled" {
    type = bool
    sensitive = false
    default = true
    description = "Container registry admin enabled"
}