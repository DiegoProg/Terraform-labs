resource "azurerm_resource_group" "myTerraformGroup" {
    location = var.location
    name = var.resourceGroupname
    tags = var.tags
  
}