variable "name" {
  type        = string
  sensitive   = false
  default     = "defualt"
  description = "Resource group name variable"
}
variable "location" {
  type        = string
  sensitive   = false
  default     = "norwayeast"
  description = "Resource group location"
}
variable "environment" {
    type = string
    sensitive = false
    default = "dev"
    description = "Environment for naming"
}