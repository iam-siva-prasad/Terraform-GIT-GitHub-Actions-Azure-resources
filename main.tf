
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  # Remote backend (values are supplied during `terraform init`)
  backend "azurerm" {}
}

provider "azurerm" {
  features {}

  # Optional: pin subscription/tenant if you prefer
  # subscription_id = var.subscription_id
  # tenant_id       = var.tenant_id
}

# ---------------------------
# Resource Group
# ---------------------------
resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
  tags     = var.tags
}

# ---------------------------
# Storage Account
# ---------------------------
resource "azurerm_storage_account" "sa" {
  name                     = var.sa_name               # must be globally unique (3-24 lower alphanumerics)
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.account_tier          # Standard/Premium
  account_replication_type = var.account_replication_type  # LRS/GRS/RAGRS/ZRS

  min_tls_version              = "TLS1_2"
  allow_blob_public_access     = false
  enable_https_traffic_only    = true
  public_network_access_enabled = true

  identity {
