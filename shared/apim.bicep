param apimName string
param apimLocation string 
param apimSKU object = {
    capacity: 1
    name: 'Developer'
}
param apimPubEmail string = 'andrew@redmancorp.com'
param apimPubName string = 'andrew'
@allowed([
  'None'
  'SystemAssigned'
  'SystemAssigned, UserAssigned'
  'UserAssigned'
])
param apimIdentityType string


resource apimResource 'Microsoft.ApiManagement/service@2021-08-01' = {
  name: apimName
  location: apimLocation
  sku: apimSKU
  identity: {
    type: apimIdentityType
  }
  properties: {
    publisherEmail: apimPubEmail
    publisherName: apimPubName
  }
}
