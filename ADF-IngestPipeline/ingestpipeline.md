The pipeline consists of the below activities: \
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


### ForEach Activity
This activity will iterate through the output of the lookup activity ( schema and table names ) and perform the copy activity in a loop to copy each table into the data lake.\  
![lookup](/ProjectImages/ingestplforeach.png)
\

![foreach](/ProjectImages/ingestpilForEach_items.png)
\
Settings > Items > @activity('Lookup sql tables').output.value  (in the dynamic content editor)


### Copy Activity

![source](/ProjectImages/ingestplcopy_source.png)
![source](/ProjectImages/ingestplforeach_sourcequery.png)
![source](/ProjectImages/ingestplcopy_sink.png)
