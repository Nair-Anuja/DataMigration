#### Steps
1. Create pipeline

![create pipeline](/ProjectImages/synapse_createpipeline.png)

3. Get Metadata Activity :
   Data Set :
   Linked service:

   ![get metadata](/ProjectImages/synapse_getmetadata.png)

2. For Each Loop
   ![expression builder](/ProjectImages/synapse_expressionbuilder_foreach.png)

   Stored Procedure activity
       Dataset :   ![](/ProjectImages/synapse_ds_AdventureWorks.png)
       Linked Service :   ![](/ProjectImages/synapse_ls_sqldb.png)

        ![](/ProjectImages/synapse_storedprocedure.png)

   ![](/ProjectImages/synapse_add_sp_parameters.png)

  4. After successful run of the pipeline, views get created under the SalesLT schema as seen in the figure below.
     ![](/ProjectImages/synapse_pipeline_run.png)  
   
