

Linked service to ![azure databricks](/ProjectImages/1.ls_adb.png)
 ![azure databricks](/ProjectImages/5.Choose_Cluster.png)

Add data factory to Azure databricks IAM and give it contributor role.
![azure databricks](/ProjectImages/2.adb_IAM.png)

![contributorrole](/ProjectImages/3.contributorrole.png)

![azure databricks](/ProjectImages/4.Add_DF_ManagedIdentity.png)



Include the two notebooks to a pipeline in the azure data factory to automate the transformation process.
![tranform](/ProjectImages/pl_transform.png)
