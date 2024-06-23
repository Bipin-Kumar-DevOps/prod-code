# resource "azurerm_storage_container" "ca-block" {
#     for_each = var.ca
#   name                  = each.value.caname
#   storage_account_name  = data.azurerm_storage_account.stg-block.name
#   container_access_type = each.value.container_access_type
# }