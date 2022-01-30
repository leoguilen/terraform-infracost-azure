#/bin/bash

# Variables
location="brazilsouth"

# Create a resource group 
az group create \
    --name $TF_BACKEND_CONFIG_RG_NAME \
    --location $location

# Create a storage account
az storage account create \
    --name $TF_BACKEND_CONFIG_SA_NAME \
    --resource-group $TF_BACKEND_CONFIG_RG_NAME \
    --location $location \
    --sku Standard_LRS

storageKey=$(az storage account keys list --resource-group $TF_BACKEND_CONFIG_RG_NAME --account-name $TF_BACKEND_CONFIG_SA_NAME | jq .[0].value)
alreadyExistsContainer=$(az storage container exists --account-name $TF_BACKEND_CONFIG_SA_NAME --account-key $storageKey --name $TF_BACKEND_CONFIG_CONTAINER_NAME | jq .exists)

if [ $alreadyExistsContainer != true ]
then
    # Create a container in storage account if already not exists
    az storage container create \
        -n $TF_BACKEND_CONFIG_CONTAINER_NAME \
        --account-name $TF_BACKEND_CONFIG_SA_NAME \
        --account-key $storageKey \
        --fail-on-exist
fi

echo "Done ✅"