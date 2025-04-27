targetScope = 'subscription'

var rgName = 'dp420-rg'

module rg 'rg.bicep' = {
  name: 'rg'
  scope: subscription()
  params: {
    rgName: rgName
  }
}

module cosmos 'cosmos.bicep' = {
  name: 'cosmos'
  scope: resourceGroup(rgName)
  params: {
    accountName: 'tmpa-cosmos'
  }
}
