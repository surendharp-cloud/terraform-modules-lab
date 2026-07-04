terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "sttfstate2026suren"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}