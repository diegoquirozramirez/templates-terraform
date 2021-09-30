resource "azurerm_public_ip" "main" {
  name                = var.publicIp
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  allocation_method   = "Static"

  tags = {
    Name        = "IPP-PICHINCHA-001"
    Project     = var.ProjectTag
    Environment = var.EnvironmentTag
  }
}