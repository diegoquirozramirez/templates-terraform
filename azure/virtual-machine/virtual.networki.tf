resource "azurerm_virtual_network" "main" {
  name                = var.virtualNetwork
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = ["10.0.0.0/16"]
  tags = {
    Name        = "VN-PICHINCHA-001"
    Project     = var.ProjectTag
    Environment = var.EnvironmentTag
  }
}