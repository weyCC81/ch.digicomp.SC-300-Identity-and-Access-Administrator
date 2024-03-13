#Install-Module Microsoft.Graph -Scope AllUsers
#Install-Module Microsoft.Graph.Beta -Scope AllUsers
# Import-Module Microsoft.Graph.Identity.Governance

Connect-MgGraph -Scopes "EntitlementManagement.Read.All" -NoWelcome
#Select-MgProfile -Name "beta"

#$accesspackage = Get-MgEntitlementManagementAccessPackage -DisplayNameEq "Marketing Campaign"
#$accesspackage = Get-MgBetaEntitlementManagementAccessPackage -DisplayNameEq "Sales and Marketing"
$accesspackage = Get-MgBetaEntitlementManagementAccessPackage -DisplayNameEq "Marketing Campaign"; $accesspackage.count
#$accesspackage | fl
#$assignments = Get-MgEntitlementManagementAccessPackageAssignment -AccessPackageId $accesspackage.Id -ExpandProperty target -All -ErrorAction Stop
$assignments = Get-MgBetaEntitlementManagementAccessPackageAssignment -AccessPackageId $accesspackage.Id -ExpandProperty target -All -ErrorAction Stop
$assignments.count
$assignments | Format-Table Id,AssignmentState,TargetId,{$_.Target.DisplayName}

#Get-MgBetaEntitlementManagementAccessPackageAssignmentPolicy | fl
#Get-MgBetaEntitlementManagementAccessPackageCatalog | fl
##Get-MgBetaEntitlementManagementAccessPackageResource -All
## Get-MgBetaEntitlementManagementAccessPackageResource_List: Origin system is required

# Disconnect-MgGraph
