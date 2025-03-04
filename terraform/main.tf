provider "azurerm" {
  features {}
  use_oidc = true
}

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Create API Management instance
module "apim" {
  source = "./modules/apim"

  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  apim_name           = var.apim_name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  jwt_secret          = var.jwt_secret
}