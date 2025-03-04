variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "apim-resource-group"
}

variable "location" {
  description = "The Azure region."
  type        = string
  default     = "canadacentral"
}

variable "apim_name" {
  description = "The name of the API Management service."
  type        = string
  default     = "hello-apim-new"  # Change this to a unique name
}

variable "publisher_name" {
  description = "The name of the publisher."
  type        = string
  default     = "Aspiringakashdp"
}

variable "publisher_email" {
  description = "The email of the publisher."
  type        = string
  default     = "Aspiringakashdp@gmail.com"
}

variable "jwt_secret" {
  description = "The JWT secret for token validation."
  type        = string
  sensitive   = true
  default     = "my-secure-jwt-secret-key-1234567890"
}