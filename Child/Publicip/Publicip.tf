resource "azurerm_public_ip" "example" {
  name                = "RUM_PublicIP"
  resource_group_name = "RUM_rg"
  location            = "west europe"
  allocation_method   = "Static"
}