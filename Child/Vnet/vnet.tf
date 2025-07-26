resource"azurerm_virtual_network" "RUM_Vnet" {
    name = "Rum_Vnet"
    location = "west europe"
    resource_group_name = "RUM_rg"
    address_space = ["10.0.0.0/16"]
}



# resource "azurerm_virtual_network" "example" {
#   name                = "example-network"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
#   address_space       = ["10.0.0.0/16"]