# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "ResourceGroup-001"
  location = "eastus2" // 
  tags = {
    Name = "RG-PICHINCHA-001"
  }
}

output "rg-id" {
  value       = azurerm_resource_group.rg.id
  description = "ID Resource Group"
  sensitive   = false
}