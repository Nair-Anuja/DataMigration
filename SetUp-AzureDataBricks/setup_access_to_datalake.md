### Steps to follow
1. Create a service prinicipal
2. Assign Storage blob Data contributor role to the service prinicipal
3. Add the service principal details to the key vault.
4. Create secret scope in azure databricks

 
   ![entraid](/ProjectImages/EntraID.png)

   ![App Registration](/ProjectImages/2.AppRegistration.png)

   ![ClientSecret](/ProjectImages/3.NewClientSecret.png)

   ![copy secret](/ProjectImages/4.CopysecretValue.png)

   ![roleassignment](/ProjectImages/5.RoleAssignmentinDL.png)
   ![secretinkeyvault](/ProjectImages/6.CreatesecretinKeyVault.png)

\
Add /secrets/createScope to the end of the azure databricks url.
For example https://adb-460000000000000.16.azuredatabricks.net/?o=460000000000&l=en-us#secrets/createScope

 ![createScope](/ProjectImages/createScope.png)
  ![keyvault url](/ProjectImages/KV_Url.png)
