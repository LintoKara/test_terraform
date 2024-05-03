resource "azurerm_linux_web_app_slot" "Stagging" {
  name = "Stagging"
  app_service_id = azurerm_linux_web_app.app_svc.id

  site_config {
    
  }
}