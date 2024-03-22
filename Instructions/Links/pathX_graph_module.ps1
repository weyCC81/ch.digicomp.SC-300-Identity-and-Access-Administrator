#Install-Module Microsoft.Graph -Scope AllUsers
##Import-Module Microsoft.Graph

#Connect-MgGraph -Scopes "User.Read.All"
Connect-MgGraph -Scopes "Policy.Read.All, Application.Read.All" -NoWelcome
(Get-MgContext).Scopes

#get-help *conditionalaccess* | ft -auto
#get-help Get-MgIdentityConditionalAccess | ft -auto
#get-help Get-MgIdentityConditionalAccess -full
#(Find-MgGraphCommand -Command Get-MgIdentityConditionalAccessPolicy).Permissions

Get-MgIdentityConditionalAccessPolicy | Select -ExpandProperty Conditions | Out-GridView
Get-MgIdentityConditionalAccessPolicy | Export-Clixml C:\Allfiles\export-Conditional.txt
Get-MgIdentityConditionalAccessPolicyCount

#(Find-MgGraphCommand -Command Get-MgUser).Permissions
Get-MgUser


#get-help get-*application* | ft -auto
#(Find-MgGraphCommand -Command Get-MgApplication).Permissions
# App Registration
Get-MgApplication

# Enterprise Apps
Get-MgServicePrincipal

#Find-MgGraphCommand -Uri /v1.0/identity/conditionalAccess/policies