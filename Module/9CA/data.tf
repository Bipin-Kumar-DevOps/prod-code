# data "azurerm_storage_account" "stg-block" {
#     for_each = var.ca
#   name                = each.value.stgname
#   resource_group_name = each.value.resource_group_name
# }

# # output "storage_account_tier" {
# #   value = data.azurerm_storage_account.example.account_tier
# # }