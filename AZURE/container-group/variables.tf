variable "name" {
  type = string
  sensitive = false
  description = "Container group name"
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
variable "os_type" {
  type = string
  sensitive = false
  description = "Os type"
}
variable "ip_address_type" {
  type = string
  sensitive = false
  description = "Ip address type"
}
variable "dns_name_label" {
  type = string
  sensitive = false
  description = "Dns label name"
}

variable "containers" {
  description = "A map of container configurations"
  type        = map(object({
    image  = string
    cpu    = string
    memory = string
    ports  = list(object({
      port     = number
      protocol = string
    }))
  }))
}