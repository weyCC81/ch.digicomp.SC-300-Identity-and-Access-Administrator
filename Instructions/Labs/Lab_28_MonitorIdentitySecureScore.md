---
lab:
    title: '28 - Monitor and managed security posture with Identity Secure Score'
    learning path: '04'
    module: 'Module 04 - Plan and Implement and Identity Governance Strategy'
---

# Lab 28 - Monitor and managed security posture with Identity Secure Score

## Lab scenario

Microsoft Entra Identity Protection provides automated detection and remediation to identity-based risks, and provides data in the portal to investigate potential risks. Microsoft Entra Identity Protection also provides an Identity Secure Score to monitor and improve your identity security posture.  In the same manner as Microsoft Defender XDR and Microsoft Defender for Cloud, Identity Secure Score provides improvement actions and recommendations that can improve your overall security posture for identity in Microsoft Entra ID.  This lab will explore this capability. 

#### Estimated time: 15 minutes

### Exercise 1 - Using Identity Secure Score to monitor and manage identity security posture

#### Task 1 - Review Identity Secure Score and improvement actions

1. Sign in to the [https://entra.microsoft.com](https://entra.microsoft.com) as a Global administrator.

2. Open the **Protection** menu and select **Identity Secure Score**

3. In the **Overview** tile, you will find **Identity Secure Score**.

4. Select **Identity Secure Score**.  This will take you to the Identity Secure Score dashboard.

5. Scroll down to view the **Improvement actions**.

6. In contrast to the improvement actions in Microsoft Defender for Cloud and Microsoft Defender XDR, these improvement actions are specific to identity.  This provides a more focused list of potential actions to your security posture management.  Any improvement actions initiated from this list will also provide an impact to your overall tenant security posture. 

#### Task 2 - Execute an improvement action

1. To improve one area of the identity security posture, select **Enable Microsoft Entra ID Identity Protection sign-in risk policies**.

2. In the tile that opens, scroll down and select **Get Started**.

3. A new tab will open for **Conditional Access**.
 **Note** - by default the Get Started button will open in Azure Portal. You can use the portal or return to the Entra admin center. Either wil work.

4. Select **+ New policy**.

5. Give your policy a name. We recommend that organizations create a meaningful standard for the names of their policies.

6. Under Assignments, select Users or workload identities.

7. Under Include, select All users.

8. Under Exclude, select Users and groups and choose any accounts that must maintain the ability to use legacy authentication. Microsoft recommends you exclude at least one account to prevent yourself from being locked out.

9. Under Target resources > Cloud apps > Include, select All cloud apps.

10. Under Conditions > Client apps, set Configure to Yes.
 - Check only the boxes Exchange ActiveSync clients and Other clients.

11. Select Done.

12. Under Access controls > Grant, select Block access.

13. Select Select.

14. Confirm your settings and set Enable policy to Report-only.

15. Select Create to create to enable your policy.
