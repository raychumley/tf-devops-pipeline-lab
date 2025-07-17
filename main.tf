terraform {
  backend "azurerm" {
    resource_group_name  = "rayc-state-rg-pipeline"
    storage_account_name = "raycstatesapipeline"
    container_name       = "tfstate"         # 👈 This is the container (like a folder)
    key                  = "terraform.tfstate" # 👈 This is the blob (file)
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d52a6d4f-8a6b-4e23-a011-dbb0c8d7eddc"
}

resource "azurerm_resource_group" "rg2" {
  name      = "rayc-basic-pipeline-test2"
  location  = "westus2"
}

resource "azurerm_resource_group" "rg3" {
  name      = "rayc-basic-pipeline-test3"
  location  = "westus2"
}
