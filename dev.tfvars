
rg_name  = "rg-terraform-demo-dev"
location = "eastus"

# must be globally unique; adjust for your org
sa_name  = "sttfdevsivaprasad01"

account_tier             = "Standard"
account_replication_type = "LRS"

container_name = "appdata"

tags = {
  env   = "dev"
  owner = "siva-prasad"
