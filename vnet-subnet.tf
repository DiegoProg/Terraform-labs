resource "azurerm_virtual_network" "myterraformnetwork" {
  name                = var.vnetname
  location            = var.location
  address_space       = ["10.0.0.0/16"]
  resource_group_name = azurerm_resource_group.myterraformnetwork.name

  tags = var.tags
  
}

resource "azurerm_subnet" "myterraformsubnet" {
  name                 = var.subnetname
  resource_group_name  = azurerm_resource_group.myterraformnetwork.name
  virtual_network_name = azurerm_virtual_network.myterraformnetwork.name
  address_prefixes     = ["10.0.2.0/24"]

  tags = var.tags

}