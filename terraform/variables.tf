variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "canadacentral"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "api-resource-group"
}

variable "apim_name" {
  description = "Name of the API Management instance"
  type        = string
  default     = "hello-api-new"
}

variable "publisher_name" {
  description = "APIM publisher name"
  type        = string
  default     = "Akash"
}

variable "publisher_email" {
  description = "APIM publisher email"
  type        = string
  default     = "akashdpakash@gmail.com"
}

variable "jwt_secret" {
  description = "A secret value used in the JWT policy for validation (for testing only)"
  type        = string
  default     = "mySecretJWTKey"
}
