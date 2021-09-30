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

resource "azurerm_resource_group" "main" {
  name     = var.resourceGroup
  location = var.location
  tags = {
    Name        = "RG-PICHINCHA-001"
    Project     = var.ProjectTag
    Environment = var.EnvironmentTag
  }
}

output "rg-id" {
  value       = azurerm_resource_group.main.id
  description = "ID Resource Group"
  sensitive   = false
}