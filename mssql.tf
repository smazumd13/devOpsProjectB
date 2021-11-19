resource "azurerm_mssql_server" "mssql1" {
  name                         = var.sqlserverName
  resource_group_name          = var.rgroupName
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sqlAdminuser
  administrator_login_password = var.sqlAdminPass
}

resource "azurerm_mssql_database" "db1" {
  name      = var.dbName
  server_id = azurerm_mssql_server.mssql1.id
}