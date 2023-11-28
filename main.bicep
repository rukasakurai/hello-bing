param searchServiceName string = 'bing-search-service'
param location string = 'eastus'
param sku string = 'free'

resource searchService 'Microsoft.Search/searchServices@2021-05-01-preview' = {
  name: searchServiceName
  location: location
  sku: {
    name: sku
  }
}
