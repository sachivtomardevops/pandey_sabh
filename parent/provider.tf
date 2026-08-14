terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
}

provider "azurerm" {
  features {}

  # Credentials env variables se read honge
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

variable "client_id" { type = string }
variable "client_secret" { type = string }
variable "subscription_id" { type = string }
variable "tenant_id" { type = string }