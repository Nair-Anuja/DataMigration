The ingest pipeline (pl_copy_sqltables_to_adls) consists of the below activities: \
**Lookup Activity**
\
**For Each Activity**
\
**Copy Activity** 


### Lookup Activity

Lookup activity is used to select all the tables under the SalesLT schema from the AdventureWorks2022 database.\
![lookup](/ProjectImages/ingestpllookup.png)
\
\
  **Query Used:**
  
  SELECT s.name  as SchemaName, t.name  as TableName\
  FROM sys.tables T \
  JOIN   sys.schemas S on T.schema_id = S.schema_id\
  WHERE s.name = 'SalesLT'  

\
   **Linked Service : ls_sqlserver**

   Create a linked service to the on premises database.\
   Create a new linked service by navigating to Manage tab -> Linked Service and clicking on **+ New**.
   ![lookup](/ProjectImages/Linkedservice.png)

   Search for sql to create a connection to the sql server.
   ![lookup](/ProjectImages/linkedservice_sql.png)

   Select the self hosted integration runtime that was created in this step. 
   ![lookup](/ProjectImages/ls_sqlserver.png)

   The sql server login  password is stored in the keyvault.Click on **Azure Key Vault** and then select the linked service to the key vault to access the password.
   ![lookup](/ProjectImages/ls_sqlserver2.png)
  
 \
  **Dataset :  ds_sqlserver_tables**
 


### ForEach Activity
This activity will iterate through the output of the lookup activity ( schema and table names ) and perform the copy activity in a loop to copy each table into the data lake.\  
![lookup](/ProjectImages/ingestplforeach.png)
\
\
Click the dynamic content link in the items field to select the output from the lookup activity.
![foreach](/ProjectImages/ingestpilForEach_items.png)
\
\
Settings > Items > @activity('Lookup sql tables').output.value  (in the dynamic content editor)


### Copy Activity

The below snapshot shows the source settings for the copy activity.
![source](/ProjectImages/ingestplcopy_source.png)
\
\
The below snapshot shows the dynamic query content for the source. This will retrieve the schema and table names to be copied.

![source](/ProjectImages/ingestplforeach_sourcequery.png)
\
\
The below snapshot shows the sink settings for the copy activity.
![source](/ProjectImages/ingestplcopy_sink.png)

 **Source Dataset :  ds_sqlserver_copy**
 **Linked Service :  ls_sqlserver** (same as above)

 **Sink linked service: ls_adls**
  
 Create a linked service to the azure datalake storage by selecting azure datalake storage2 and hit continue.
 The account key is stored in the key vault. So select the azure key vault and connect to the corresponding linkedservice to retrieve the account key.
 ![sink linkedservice](/ProjectImages/linkedservice_sql.png)
 ![sink linkedservice](/ProjectImages/ls_adls_key.png)


 **Sink dataset: ls_adls**
 The table data will be stored in the azure datalake storage within directory structure :
 sqlserver-migration/bronze/SchemaName/TableName/TableName.parquet
 The file path will parameterised by adding parameters of schema name and table name to the dataset.
Schema and table names will be retrieved from the output of the look up activity.
  ![sink dataset](/ProjectImages/ds_adls_parameters.png)

  Parameterised File path :
  @concat('sqlserver-migration/bronze') 
  @{concat(dataset().schemaname,'/', dataset().tablename)}
  @{concat(dataset().tablename,'.parquet')}

  ![sink linkedservice](/ProjectImages/dataset_adls_filepath.png)
  

  

 
 


