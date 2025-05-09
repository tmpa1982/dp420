@description('The name of the CosmosDB account')
param accountName string

@description('The Azure location')
param location string = resourceGroup().location

resource cosmos 'Microsoft.DocumentDB/databaseAccounts@2024-11-15' = {
  name: accountName
  location: location
  properties: {
    databaseAccountOfferType: 'Standard'
    locations: [
      {
        locationName: location
        failoverPriority: 0
      }
    ]
    enableFreeTier: true
  }
}

resource database 'Microsoft.DocumentDB/databaseAccounts/sqlDatabases@2024-11-15' = {
  parent: cosmos
  name: 'cosmicworks'
  properties: {
    resource: {
      id: 'cosmicworks'
    }
    options: {
      throughput: 1000
    }
  }
}
