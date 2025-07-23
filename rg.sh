az group create --name NetShield-RG --location eastus

az network vnet create \
  --resource-group NetShield-RG \
  --name NetShield-VNet \
  --address-prefix 10.0.0.0/16 \
  --subnet-name web-subnet \
  --subnet-prefix 10.0.1.0/24

az network vnet subnet create \
  --resource-group NetShield-RG \
  --vnet-name NetShield-VNet \
  --name app-subnet \
  --address-prefix 10.0.2.0/24

az network vnet subnet create \
  --resource-group NetShield-RG \
  --vnet-name NetShield-VNet \
  --name db-subnet \
  --address-prefix 10.0.3.0/24
