
# Optional (only if you want to pin in provider)
variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID (optional; otherwise uses logged in context)"
  default     = null
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID (optional)"
  default     = null
}

variable "rg_name" {
  type        = string
  description = "Resource group name where the storage account will be created."
}

variable "location" {
  type        = string
  description = "Azure region for resources."
  default     = "eastus"
}

variable "sa_name" {
  type        = string
  description = "Globally unique storage account name (lowercase alphanumerics, 3-24 chars)."
}

variable "account_tier" {
  type        = string
  description = "Storage account tier (Standard or Premium)."
  default     = "Standard"
  validation {
    condition     = contains(["Standard", "Premium"], var.account_tier)
    error_message = "account_tier must be Standard or Premium."
  }
}

variable "account_replication_type" {
  type        = string
  description = "Replication type (LRS, GRS, RAGRS, ZRS)."
  default     = "LRS"
  validation {
    condition     = contains(["LRS", "GRS", "RAGRS", "ZRS"], var.account_replication_type)
    error_message = "account_replication_type must be one of LRS, GRS, RAGRS, ZRS."
  }
}

variable "container_name" {
  type        = string
  description = "Name for the blob container to create."
  default     = "appdata"
}

variable "blob_delete_retention_days" {
  type        = number
  description = "Blob soft-delete retention in days."
  default     = 7
  validation {
    condition     = var.blob_delete_retention_days >= 1 && var.blob_delete_retention_days <= 365
    error_message = "blob_delete_retention_days must be between 1 and 365."
  }
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to all resources."
  default     = {
    workload = "terraform-demo"
    owner       owner    = "siva-prasad"
  }
