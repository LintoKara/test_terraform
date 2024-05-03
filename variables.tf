# define app service name
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
  default = "Lunix"
}
variable "sku_name" {
  default = "S1"
}