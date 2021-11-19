resource "azurerm_app_service_plan" "asp1" {
  name                = "serviceplan1"
  location            = var.location
  resource_group_name = var.rgroupName

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "app1" {
  name                = var.appName
  location            = var.location
  resource_group_name = var.rgroupName
  app_service_plan_id = azurerm_app_service_plan.asp1.id

  site_config {
    dotnet_framework_version = "v5.0"
  }
}