# hello-bing

## Provisioning the Bing resource
### Azure Portal
https://portal.azure.com/#create/Microsoft.CognitiveServicesBingSearch-v7

Reference: https://learn.microsoft.com/en-us/bing/search-apis/bing-web-search/tutorial/bing-web-search-single-page-app

### Bicep
My bicep file does not currently work.

There seems to be documentation for the old way to use Bing and the new way to use Bing floating around. Also Bing and Azure Search might be related, and I seem to get Azure Search documentation when looking for Bing documentation.

```
# Set the variables
$resource_group="rg-hello-bing-temp"
$bicep_file_path="main.bicep"
$search_service_name="my-search-service"
$location="japaneast"
$sku="free"

az group create --name $resource_group --location $location

# Deploy the resource using the variables
az deployment group create  --resource-group $resource_group --template-file $bicep_file_path --parameters searchServiceName=$search_service_name location=$location sku=$sku
```


### Term for using the Bing Search Service
As of 2023-11-29:
```
Terms
By using the Bing Search Services, you agree to be bound by the terms available at
https://www.microsoft.com/en-us/bing/apis/legal
and
https://learn.microsoft.com/en-us/bing/search-apis/bing-web-search/use-display-requirements
which may be updated from time to time. You must use results you obtain from the Bing Search Services only in Internet Search Experiences (as defined in the use and display requirements) and must not cache or copy results.
I confirm I have read and understood the notice above.
```

### "ListKeys" permission on this Bing resource is require...
`"ListKeys" permission on this Bing resource is require...`
https://github.com/MicrosoftDocs/azure-docs/issues/116175