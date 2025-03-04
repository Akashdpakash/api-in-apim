provider "azurerm" {
  features {}
}

module "apim" {
  source = "./modules/apim"

  resource_group_name = var.resource_group_name
  location            = var.location
  apim_name           = var.apim_name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  jwt_secret          = var.jwt_secret
}