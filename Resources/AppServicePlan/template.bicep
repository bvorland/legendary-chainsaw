param planName string
param planLocation string = resourceGroup().location
param planSku string ='Y1'
param planTier string = 'Dynamic'

resource asp 'Microsoft.Web/serverfarms@2020-12-01' = {
  name:planName
  location:planLocation
  kind: 'linux'
  sku:{
    name:planSku
    tier:planTier
  }
  properties:{
    reserved:true
  }
}

output planId string = asp.id
