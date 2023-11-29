// This code does not currerntly work
param searchServiceName string = 'bing-search-service'
param location string = 'eastus'
param sku string = 'free'

resource searchService 'Microsoft.Search/searchServices@2022-09-01' = {
  name: searchServiceName
  location: location
  sku: {
    name: sku
  }
}
