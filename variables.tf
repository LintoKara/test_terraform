# define the app service name
variable "appservicename" {
  default = ""
}

# define app service location
variable "location" {
  default = "eastus"
}

variable "subscription-id" {
  default = ""
}
variable "tenant_id" {
  default = ""
}
variable "client_id" {
  default = ""
}
variable "client_secret" {
  default = ""
}
variable "os_type" {
  default = "Linux"
}
variable "sku_name" {
  default = "S1"
}

variable "vent_name" {
  default = "Vnet-1"
}

variable "vnet_address_space" {
  default = ["10.0.0.0/16"]

}

variable "subnet_name" {
  default = "subent1"
}

variable "subnet_address_prefixes" {
  default = ["10.0.1.0/24"]
}
