targetScope = 'subscription'

@description('The name of the resource group')
param rgName string

resource rg 'Microsoft.Resources/resourceGroups@2024-11-01' = {
  name: rgName
  location: 'southeastasia'
}
