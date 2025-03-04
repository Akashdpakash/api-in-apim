# Input variables for the APIM module

variable "resource_group_name" {
  description = "The name of the resource group where the APIM instance will be deployed."
  type        = string
}

variable "location" {
  description = "The Azure region where the APIM instance will be deployed."
  type        = string
}

variable "apim_name" {
  description = "The name of the Azure API Management instance."
  type        = string
}

variable "publisher_name" {
  description = "The name of the publisher/owner of the APIM instance."
  type        = string
}

variable "publisher_email" {
  description = "The email address of the publisher/owner of the APIM instance."
  type        = string
}

variable "sku_name" {
  description = "The SKU of the APIM instance (e.g., Developer_1, Basic_1, Standard_1)."
  type        = string
  default     = "Developer_1"
}

variable "jwt_secret" {
  description = "The secret key used for JWT token validation in APIM policies."
  type        = string
  sensitive   = true
}

variable "api_name" {
  description = "The name of the API to be created in the APIM instance."
  type        = string
  default     = "hello-api"
}

variable "api_display_name" {
  description = "The display name of the API in the APIM instance."
  type        = string
  default     = "Hello API"
}

variable "api_path" {
  description = "The path for the API in the APIM instance."
  type        = string
  default     = "hello"
}

variable "api_protocols" {
  description = "The protocols supported by the API (e.g., https)."
  type        = list(string)
  default     = ["https"]
}

variable "api_revision" {
  description = "The revision of the API in the APIM instance."
  type        = string
  default     = "1"
}