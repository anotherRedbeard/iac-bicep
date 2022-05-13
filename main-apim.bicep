param location string = resourceGroup().location

//deployment of APIM
module apimDeploy './shared/apim.bicep' = {
  name: 'apimDeployName'
  params: {
    apimName: 'red-apimiac-dev'
    apimLocation: location
    apimSKU: {
      capacity: 1
      name: 'Developer'
    }
    apimIdentityType: 'SystemAssigned'
  }
}
