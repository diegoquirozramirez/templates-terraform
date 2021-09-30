resource "azurerm_virtual_machine" "main" {
  name                  = var.virtualMachine
  location              = azurerm_resource_group.main.location
  resource_group_name   = azurerm_resource_group.main.name
  network_interface_ids = [azurerm_network_interface.main.id]
  #zones                 = [2]
  vm_size = var.virtualMachineSize
  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "ubuntu"
    admin_username = "diegoquiroz"
    admin_password = "<set_your_password>"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    Name        = "VM-PICHINCHA-001"
    Project     = var.ProjectTag
    Environment = var.EnvironmentTag
  }
}

output "idVirtualMachine" {
  value       = azurerm_virtual_machine.main.id
  description = "El id de la nueva maquina virtual"
}