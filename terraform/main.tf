provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "myapp-rg"
  location = "East US"
}
resource "azurerm_app_service" "dev" {
  name                = "myapp-dev"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.plan.id
}
# am yet to Add resources for UAT, Prod, ACR, Key Vault
