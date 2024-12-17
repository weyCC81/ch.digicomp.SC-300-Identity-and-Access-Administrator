---
lab:
    title: '18 - Defender for Cloud Apps Access Policies'
    learning path: '03'
    module: 'Module 03 - Implement Access Management for Apps'
---

# 18 - Defender for Cloud Apps Access and Session Policies

### Login type = Microsoft 365 admin

## Lab scenario

Microsoft Defender for Cloud Apps  allows us to create additional Conditional Access policies specific to the cloud apps that we are monitoring.  Creating these policies can be done from within the Control menu within the Microsoft Defender for Cloud Apps  portal.

#### Estimated time: 20 minutes

### Exercise 1 - Create and test the Conditional Access App Contol policy

#### Task 1 - Confirm that PradeepG has unconditional access to FORMS

1. Launch a new **InPrivate browsing** window.
2. Connect to [https://forms.microsoft.com](https://forms.microsoft.com).
3. Select the login  in the upper-right corner of the page.
4. Log in as Pradeep Gupta.
   - Username = PradeepG@<<<your lab hoster provided domain>>>
   - Password = the password from your resources tab
5. Confirm that Microsoft Forms opens and that you do not get any warning messages.
6. Close the InPrivate browsing window.

#### Task 2 - Configure Microsoft Entra ID to work with Defender for Cloud Apps

1. Navigate to [https://entra.microsoft.com](https://entra.microsoft.com) and go to Microsoft Entra ID.

2. Under **Identity**, select **Protection**.

3. Then select **Conditional Access**.

4. Select **+ Create new policy**.

5. Enter a policy name, such as **Monitor Pradeep using Forms**.

6. Under **Assignments**, choose **0 users and groups selected**, select **Specific users included**, select **Select users and groups** and mark the **Users and groups**.

7. Choose the **Pradeep Gupta** account for the lab tenant and select **Select**.

8. Under **Target resources**, select **No target resources selected**.

9. Select **Select apps**, and then choose **Microsoft Forms**, and select **Select**. 

10. Under **Access controls**, select **Session** and **0 controls selected**.

11. Select the **Use Conditional Access App Control** box, leave the default of **Monitor only**, and select **Select**.

12. Under **Enable policy**, select **On**, and select **Create**.

#### Task 3 - Log into Forms and validate that conditional access is monitoring

1. Launch a new **InPrivate browsing** window.
2. Connect to [https://forms.microsoft.com](https://forms.microsoft.com).
3. Select the login  in the upper-right corner of the page.
4. Log in as Pradeep Gupta.
   - Username = PradeepG@<<<your lab hoster provided domain>>>
   - Password = the password from your resources tab
5. Confirm that Pradeep has access and that you get a new message:
   - Your company is monitoring the usage of this application.
6. Close the InPrivate browsing window.

### Exercise 2 - Setup alerts in Microsoft Defender for Cloud Apps

#### Task 1 - Access Microsoft Defender for Cloud Apps and create Conditional Access App Control

Registering your application establishes a trust relationship between your app and the Microsoft identity platform. The trust is unidirectional: Your app trusts the Microsoft identity platform—not the other way around.

1. Sign in to [https://security.microsoft.com](https://security.microsoft.com) using a Global Administrator account.

1. On the left menu, scroll to and select **Polices** in the **Cloud Apps** section of the menu on the left..

1. In the **Policies** menu, locate and select **Policy Management**.

1. Select **+ Create policy**. Select **Access policy**.

1. Enter a name for the policy, such as **Monitor Microsoft Forms access.**.

1. Leave the **Category** as **Access control**.

1. Under **Activities matching all of the following**, select the drop-down for **Intune compliant, Microsoft Entra Hybrid joined** and unselect **Microsoft Entra Hybrid joined**.

1. Select the drop-down for **Select apps**.  Select **Microsoft Forms**.

1. Leave **Actions** as **Test**.

1. Under **Alerts**, leave **Create an alert...** checked and select **Send alert as email**.

1. Enter the lab admin email address and select **Enter** on your keyboard.

1. Select **Create** to create the access policy.

#### Task 2 - Log in as Pradeep to Forms to trigger activity

1. Launch a new **InPrivate browsing** window.
2. Connect to [https://forms.microsoft.com](https://forms.microsoft.com).
3. Select the login  in the upper-right corner of the page.
4. Log in as Pradeep Gupta.
   - Username = PradeepG@<<<your lab hoster provided domain>>>
   - Password = the password from your resources tab
5. Confirm that Pradeep has access and that you get a new message:
   - Your company is monitoring the usage of this application.
6. Close the InPrivate browsing window.

#### Task 3 - Review the Activity in Defender for Cloud Apps

1. Return to the browser running Defender for Cloud Apps.
2. Refresh the browser to ensure the most recent data is downloaded.
3. From the **Investigate** menu, select **Activity log**.
4. Using the **App: filter** pick **Microsoft Forms** from the list.
5. Notice the sign-on records for Pradeep.
