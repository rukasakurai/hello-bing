# hello-bing

```
az deployment group create --resource-group <RESOURCE_GROUP_NAME> --template-file <BICEP_FILE_PATH> --parameters searchServiceName=<SEARCH_SERVICE_NAME> location=<LOCATION> sku=<SKU>
```

Replace <RESOURCE_GROUP_NAME> with the name of the resource group where you want to deploy the resource, <BICEP_FILE_PATH> with the path to the Bicep file, <SEARCH_SERVICE_NAME> with the name of the Azure Bing Search v7 service, <LOCATION> with the location where you want to deploy the resource, and <SKU> with the SKU of the service (e.g., free).

Please note that you need to have the Azure CLI installed and configured on your machine to use this command. You also need to have an active Azure subscription and a Bing Search API key to use the Azure Bing Search v7 service. You can obtain a Bing Search API key by following the instructions on the Bing Search API v7 documentation.