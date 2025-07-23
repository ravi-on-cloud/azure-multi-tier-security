#Project3 VM
USERNAME="azureuser"
PASSWORD="Strongpassword123!"

# Web VM
az vm create --resource-group NetShield-RG \
  --name web-vm \
  --image Ubuntu2204 \
  --size Standard_B1s \
  --vnet-name NetShield-VNet \
  --subnet web-subnet \
  --admin-username $USERNAME \
  --admin-password $PASSWORD \
  --authentication-type password

# App VM
az vm create --resource-group NetShield-RG \
  --name app-vm \
  --image Ubuntu2204 \
  --size Standard_B1s \
  --vnet-name NetShield-VNet \
  --subnet app-subnet \
  --admin-username $USERNAME \
  --admin-password $PASSWORD \
  --authentication-type password

# DB VM
az vm create --resource-group NetShield-RG \
  --name db-vm \
  --image Ubuntu2204 \
  --size Standard_B1s \
  --vnet-name NetShield-VNet \
  --subnet db-subnet \
  --admin-username $USERNAME \
  --admin-password $PASSWORD \
  --authentication-type password
