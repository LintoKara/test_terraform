#Generate a random number to be appended to create a unique name
resource "random_integer" "rint" {
  min = 100
  max = 999
}

# create resource group
resource "azurerm_resource_group" "rg" {
    name = "rg-${random_integer.rint.result}"
    location = var.location
}

# azure service plan
# Standard Plan will support up to 5 slot and it uses linux os_type
resource "azurerm_service_plan" "app_svc_plan" {
  name                = "webapp-asp-${random_integer.rint.result}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = var.os_type
  sku_name            = var.sku_name

}
# Create app service
resource "azurerm_linux_web_app" "app_svc" {
  location = azurerm_resource_group.rg.location
  name = "webapp-svc-${random_integer.rint.result}"
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id = azurerm_service_plan.app_svc_plan.id

site_config {
minimum_tls_version = "1.2"
always_on = true
}
}
