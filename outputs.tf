
output "resource_group_name" {
  description = "Name of the resource group."
  value       = azurerm_resource_group.rg.name
}

output "storage_account_name" {
  description = "Name of the storage account."
  value       = azurerm_storage_account.sa.name
}

output "primary_blob_endpoint" {
  description = "Primary blob endpoint URL."
  value       = azurerm_storage_account.sa.primary_blob_endpoint
}

output "container_name" {
  description = "Name of the created blob container."
  value       = azurerm  value       = azurerm_storage_container.container.name
