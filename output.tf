#output include webapp URL
output "webapp_url" {
  value = azurerm_linux_web_app.app_svc.default_hostname
}
output "webapp_ips" {
  value = azurerm_linux_web_app.app_svc.outbound_ip_addresses
}