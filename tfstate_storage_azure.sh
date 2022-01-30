#/bin/bash

# Variables
rgName="tfstaterg"
storageName="tfstatesa22"
containerName="tfstate"
location="brazilsouth"

# Create a resource group 
az group create \
    --name $rgName \
    --location $location

# Create a storage account
az storage account create \
    --name $storageName \
    --resource-group $rgName \
    --location $location \
    --sku Standard_LRS

storageKey=$(az storage account keys list --resource-group $rgName --account-name $storageName | jq .[0].value)
alreadyExistsContainer=$(az storage container exists --account-name $storageName --account-key $storageKey --name $containerName | jq .exists)

if [ $alreadyExistsContainer != true ]
then
    # Create a container in storage account if already not exists
    az storage container create \
        -n $containerName \
        --account-name $storageName \
        --account-key $storageKey \
        --fail-on-exist
fi

echo "Done ✅"