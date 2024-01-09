Click on the **Create a Resource** link on the menu in the left side of the azure portal and search for databricks. Click on **Create** on Azure Databricks . 

![create resource](/ProjectImages/createresource_databricks.png)
\
\
Select the subscription and the resource group allocated for the project and give a suitable name to the azure databricks workspace.
![create resource](/ProjectImages/adb_create.png)

Added the access key for adls in key vault secrets.
\
![create resource](/ProjectImages/keyvault_secrets.png)
\
The access keys for the data lake storage can be found under the **Security and Network** blade on the left side in the data lake storage resource page.
\
![accesskey](/ProjectImages/accesskeys.png)



[Create compute resource](/ProjectImages/adb_create_compute.png) in the databricks workspace with the below specifications.
Changed the Access Mode to 'No isolation shared' as the notebooks could not be run from the data factory (as 'Existimg interactive cluster was selected while creating the linked service).
![cluster](/ProjectImages/Cluster.png)






