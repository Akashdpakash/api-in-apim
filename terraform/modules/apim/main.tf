resource "azurerm_api_management" "apim" {
  name                = var.apim_name
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email

  sku_name = "Developer_1"
}

resource "azurerm_api_management_api" "hello_api" {
  name                = "hello-apim"
  resource_group_name = var.resource_group_name
  api_management_name = azurerm_api_management.apim.name
  revision            = "1"
  display_name        = "Hello API"
  path                = "hello"
  protocols           = ["https"]

  import {
    content_format = "swagger-json"
    content_value  = file("${path.module}/swagger.json")
  }
}

resource "azurerm_api_management_policy" "jwt_policy" {
  api_management_id = azurerm_api_management.apim.id
  xml_content       = <<XML
<policies>
  <inbound>
    <validate-jwt header-name="Authorization" failed-validation-httpcode="401" failed-validation-error-message="Unauthorized">
      <issuer-signing-keys>
        <key>${var.jwt_secret}</key>
      </issuer-signing-keys>
      <audiences>
        <audience>your-audience</audience>
      </audiences>
      <issuers>
        <issuer>your-issuer</issuer>
      </issuers>
    </validate-jwt>
    <base />
  </inbound>
  <backend>
    <base />
  </backend>
  <outbound>
    <base />
  </outbound>
  <on-error>
    <base />
  </on-error>
</policies>
XML
}

output "apim_gateway_url" {
  value = azurerm_api_management.apim.gateway_url
}