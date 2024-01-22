Azure key vault will be used to store all sensitive information needed in the project.

#### Create key vault:
From the azure portal -> Create a Resource -> search for 'key vault' ->  Click on 'Create' Key Vault.
Fill in the subscription , resource group , key vault name , region , pricing tier (standard) fields to create the vault.

#### Adding secrets
Go to the secrets under the Objects blade on the left pane to add secrets as shown in the figure below.
![](/ProjectImages/3.AddSQLSecrets.png)

#### Necessary permissions need to be given to the azure services to read the secrets
As shown in the figure below , go to access policies and click on create to give necessary permissions to the services.
![](/ProjectImages/KV_AccessPolicy.png)


Get and List secret permissions were given to the azure data factory and synapse analytics services.



The below figure shows all the project related secrets stored in the key vault.
![](/ProjectImages/keyvault_secrets.png)
 
