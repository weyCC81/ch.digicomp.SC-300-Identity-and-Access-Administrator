
# Add Owner + Key Vault Administrator to KeyVault
# Create Secret

# - Run inside the VM (Access via Managed Identities)
# Request
$Response = Invoke-RestMethod -Uri 'http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https%3A%2F%2Fvault.azure.net' -Method GET -Headers @{Metadata="true"}
$KeyVaultToken = $Response.access_token
# Get a JWT Token, Optional verification in https://jwt.io/

# https://sc300keyvaultcontoso.vault.azure.net/
$Secret = Invoke-RestMethod -Uri https://sc300keyvaultcontoso.vault.azure.net/secrets/Pw?api-version=2016-10-01 -Method GET -Headers @{Authorization="Bearer $KeyVaultToken"}
# {"code":"ForbiddenByRbac"}
# Replace Reader with Secret User

$Secret | fl *
# value      : init
# id         : https://sc300keyvaultcontoso.vault.azure.net/secrets/Pw/34d28be943d6435699b93ef658f15c90
# attributes : @{enabled=True; created=1710946676; updated=1710946676; recoveryLevel=Recoverable+Purgeable}
# tags       : 
