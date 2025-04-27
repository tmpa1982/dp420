targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2024-11-01' = {
  name: 'dp420-rg'
  location: 'southeastasia'
}
