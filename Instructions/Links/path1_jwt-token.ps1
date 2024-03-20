
##Install-Module Microsoft.Graph -Scope AllUsers
##Import-Module Microsoft.Graph.Users

##Connect-MgGraph -Scopes "User.Read.All"
##(Find-MgGraphCommand -Command "Get-MgUser").Permissions
##Get-MgUser
##Get-MgBetaUser

#[System.Text.Encoding]::Ascii.GetString([Microsoft.Graph.PowerShell.Authentication.GraphSession]::Instance.MSALToken) | ConvertFrom-Json
#if([Microsoft.Graph.PowerShell.Authentication.GraphSession]::Instance.AuthContext.Scopes){ "Connected!" }

###Install-Module -Name MSIdentityTools -Scope AllUsers
#Install-Module -Name MSAL.PS -Scope AllUsers

$clientID = "a69c45fe-7a94-4609-b1d5-ee3fd4ea1d9b" # Change Application ID ID
$clientSecret = "[Add Secret]" | ConvertTo-SecureString -AsPlainText -Force
$tenantID = "117b6668-24fb-431a-8907-4447f0ed166d" # Change M365 Tenant ID
$export = Get-MsalToken -clientID $clientID -clientSecret $clientSecret -tenantID $tenantID; $export
$export.AccessToken | Out-File ./path1_token.txt
#$export.AccessToken | Out-File ./path1_token.txt

# Verification in https://jwt.io/