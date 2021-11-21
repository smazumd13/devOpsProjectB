resource "azurerm_container_registry" "acr" {
  name                = var.acrName
  resource_group_name = var.rgroupName
  location            = var.location
  sku                 = "Standard"
}