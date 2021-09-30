resource "azurerm_network_security_group" "main" {
  name                = var.securityGroup
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  security_rule {
    name                       = "SSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = 22
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    Name        = "SG-PICHINCHA-001"
    Project     = var.ProjectTag
    Environment = var.EnvironmentTag
  }
}