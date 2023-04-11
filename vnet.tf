# Azure provider configuration
provider "azurerm" {
  features {}
}

# Resource group creation
resource "azurerm_resource_group" "rg" {
  name     = "rg"
  location = "eastus"
}

# Virtual network creation
resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  address_space       = ["34.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  subnet {
    name           = "example-subnet"
    address_prefix = "34.0.1.0/24"
  }
}
