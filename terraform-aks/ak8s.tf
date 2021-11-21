resource "azurerm_kubernetes_cluster" "aks1" {
  name                = "__clustername__"
  location            = var.location
  resource_group_name = var.rgroupName
  dns_prefix          = "${var.clusterPrefix}-aks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  role_based_access_control {
    enabled = true
  }

   addon_profile { 
     azure_policy { 
       enabled = false
    }
  }
}

resource "azurerm_role_assignment" "assignment1" {
  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.aks1.identity.0.principal_id
}