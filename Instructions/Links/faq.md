# FAQ

## Learning Path 1 - Explore identity and Microsoft

> Authentication (AuthN) confirms who you are, while Authorization (AuthZ) decides what you're allowed to do. So, AuthN checks your identity, and AuthZ grants permissions based on that identity.

- Classic identity (Restrict everything to a secure network)
  - Disable MFA inside of the Company (Trusted Network)?
  - Implication on BYOD inside the Company?
- Zero trust identity (Protect assets anywhere with central policy)
  - Reduce the MFA frequency on a Managed Device > User Experience
  - Increase the MFA frequency for IT-Admin or Access to HR-Systems > Sensible asset

> Just-enough-access (JEA)
> Just-in-time (JIT)

- Identity and access management (IAM)
  - B2B collaboration: Guest-Users (Copy)
  - B2B direct connect : External User (No Copy)

- Microsoft Entra Domain Services (Azure Active Directory Domain Services) = Limited AD in the Cloud (Kerberos, LDAP, NTLM)
- Microsoft Entra ID = Cloud IDP (REST API, JSON)
- Active Directory Domain Services = AD On-Prem (Kerberos, LDAP, NTLM)

> JSON Web Token (JWT) = Can be decoded (<https://jwt.io/>)

> Identity lifecycle (Join, Move, Leave)

## Learning Path 2 - Implement an identity management solution

> Administrative Unit (Delegate Limited Roles) vs Organizational Units (Delegate Permission)
> Application Administrator (+ App Proxy) vs Cloud Application Administrator (No App Proxy)

- Establish emergency (BreakGlass --> No Login): <https://learn.microsoft.com/en-us/azure/active-directory/roles/security-emergency-access>

- Default user permissions (Self-Service vs Managed by Admin): <https://learn.microsoft.com/en-us/entra/fundamentals/users-default-permissions>

Custom security (Cloud, Entra private) vs Extension attribute (Cloud, Entra public) vs Custom attribute (on-prem, exchange)

User Type: Member vs Guest (convert to Member = More Access)

Seamless single sign-on (SSO) = Primarily for Entra Hybrid Devices (not needed for Entra joined devices), Hard to Validate with Edge Browser (Cached Credentials)

## Learning Path 3 - Implement an Authentication and Access Management solution

Conditional Access vs Default Security vs "per User MFA" (Legacy MFA Portal)

Authentication methods (MFA, Password-less, Strength)
Self-Service Password Reset (SSPR) --> No Security Questions for Admin

- Smart Lockout vs User Lock (Not synced)
  - Verhalten mit PTA und ADFS (User Lock impact) vs PHS (User Lock no impact)
    - ADFS (External Lock [WAP], AD Lock = External locks must be higher)
    - PTA (Smart Lock + AD Lock = Smart locks must be higher)
    - PHS (just Smart Lock)
  - Smart Lockout to Locations (IP-Ranges) instead of whole User Account

Login with Microsoft Entra ID (+ System assigned managed identity in Azure)

Conditional Access (Exclude vs Include, Frequency, Debugging)

Risk Policy (Risky Event vs Risky User)  {Hint: Risky Guest-User in Guest-Tenant}

Azure Roles (Key Vault Options, usw.)

## Learning Path 4 - Implement Access Management for Apps

MDCA = Microsoft Defender for Cloud Apps (zuvor: MCAS = Microsoft Cloud App Security)
CASB = Cloud access security broker (<https://www.microsoft.com/de-ch/security/business/security-101/what-is-a-cloud-access-security-broker-casb>)

Enterprise App (SAML) vs Application Registration (OpenID (OIDC))
Gallery (Verification by Microsoft, Template), Mutli-Tenant App, Single-Tenant App

User Consent (Default Allowed, Restriction possible) vs Tenant-Wide Consent (by Admin)

Example App: LastPass, Vertec, usw.

Graph API over PowerShell vs Graph Explorer (REST API, JSON)

## Learning Path 5 - Plan and Implement an Identity Governance Strategy

LifeCycle (Join, Leaver), Terms of use (ToS), Access Review

PIM
> In the context of Entra ID (Azure AD), Privileged Identity Management (PIM) refers to a feature that helps organizations manage, control, and monitor access to privileged roles within Azure AD and other Microsoft cloud services

KQL
> KQL typically stands for "Kusto Query Language." Kusto is a query language used in Azure Data Explorer, Azure Monitor, and Azure Sentinel, among other Microsoft services. It's designed for querying large datasets quickly and efficiently. KQL is similar to SQL (Structured Query Language) but tailored specifically for these Azure services. It's commonly used for analyzing and querying data in cloud environments, especially for monitoring, logging, and analytics purposes.

Secure Score (wait ~1 day for updates)

Sign-In Logs Analyse (Workbooks, Export, Sentinel, KQL Examples/Templaes)

## More

### Identity Provider (IdP)

> OpenID provider - OpenID Connect (OIDC) and/or SAML identity provider - Security Assertion Markup Language (SAML)

### W3C Decentralized Identifiers (DIDs)

<https://www.w3.org/TR/did-core/#a-simple-example>
> "id": "did:example:123456789abcdefghi#keys-1"

- Used in Product: "Entra Verified ID"

### System for Cross-Domain Identity Management (SCIM)

> SCIM 2.0 protocol for automatic provisioning. The service connects to the SCIM endpoint for the application, and uses the SCIM user object schema and REST APIs to automate provisioning and de-provisioning of users and groups.

### Common delegation scenarios

> When you delegate administrative tasks, you want to keep a few terms in mind:     Least Privilege – Just in Time – Just long enough

### Access Review

> Principle of least privilege

### Secure Score

> Identity Secure Score vs Microsoft 365 Secure Score

### Supported RDP properties

<https://learn.microsoft.com/en-us/windows-server/remote/remote-desktop-services/clients/rdp-files>

- authentication level:i:value
  - 0: If server authentication fails, connect to the computer without warning.
  - 2: If server authentication fails, show a warning, and choose to connect or refuse the connection.
- enablecredsspsupport:i:*value*
  - 0: RDP won't use CredSSP, even if the operating system supports CredSSP.
  - 1: RDP will use CredSSP if the operating system supports CredSSP.

### Managed Domain vs Federated Domain

Managed Domain = Entra ID (Azure) for Internal User
Federated Domain = ADFS for Internal User

### MFA Registration (Optional)

<https://aka.ms/mfasetup>
> The URL is for setting up multi-factor authentication (MFA) for Microsoft accounts. When users visit this URL, they are typically directed to a page where they can configure multi-factor authentication settings for their Microsoft accounts, adding an extra layer of security beyond just a password.

Source: <https://msportals.io>

### Login with Microsoft Entra ID (+ Managed Identity on Azure VM)

<https://learn.microsoft.com/en-us/entra/identity/devices/howto-vm-sign-in-azure-ad-windows#configure-role-assignments-for-the-vm>

### Managed identity with Azure KeyVault

> see [path3_lab16_t5_keyvault.ps1]
<https://learn.microsoft.com/en-us/azure/frontdoor/managed-identity>

### App Registration Example

> Plattform: Single-page application, Mobile and desktop applications, iOS/macOS, Android

- Business Applicatio - LastPass
  - EN: <https://support.lastpass.com/s/document-item?language=en_US&sfdcIFrameOrigin=null&bundleId=lastpass&topicId=LastPass%2FFederated_Azure_AD_step3_create_login_app.html&_LANG=dede>
  - DE: <https://support.lastpass.com/s/document-item?language=de&sfdcIFrameOrigin=null&bundleId=lastpass&topicId=LastPass/Federated_Azure_AD_step3_create_login_app.html&_LANG=dede>
- Business Application - Vertec
  - <https://www.vertec.com/ch/kb/openid-connect/>

### Friendly Takeover, Internal admin takeover

<https://learn.microsoft.com/en-us/microsoft-365/admin/misc/become-the-admin?view=o365-worldwide>

### Emergency Admin, Break-glass account

> Emergency access accounts are limited to emergency or “break glass” scenarios where normal administrative accounts can’t be used.
> Implement strict security controls—always
> Validate break-glass accounts

<https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/security-emergency-access>

### Entra Export

> Export Configuration Settings (+ Microsoft 365 Groups)

<https://github.com/microsoft/EntraExporter>
<https://office365itpros.com/2023/08/24/entraexporter-tool/>

### Microsoft 365 DSC

> Copy Tenant Settings, Tenant Configuration Drift

<https://microsoft365dsc.com/>
