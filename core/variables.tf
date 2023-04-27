# VARIABLES FOR THE DEV ENVIRONMENT

variable "location" {
  type    = string
  default = "eastus"
}

variable "create_resource_group" {
  type        = bool
  default     = true
  description = "Specify true if you want to create a resource group, other wise populate the name below"
}

variable "resource_group_name" {
  type        = string
  description = "Specify the existing resource group name"
}

variable "kubernetes_version" {
  type    = number
  default = 1.25
}

variable "vnet_address_space" {
  type    = list(any)
  default = ["10.0.0.0/16"]
}

variable "aks_subnet_address_space" {
  type    = list(any)
  default = ["10.0.1.0/24"]
}