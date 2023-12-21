# DataMigration
This project is about migration sql server database to Azure SQL database.

Solution Architecture

Environment Set Up
1. Download the [AdventureWorksLT](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms) back up file. The link has instructions to restore the file.
2. Set up user /password to access the database.
3. On the Azure portal , set up the subscription. Within the subscription set up Data Factory , Azure Data Lake Storage, SQL Database, [key vault](SetUp-AzureKeyVault).
4. Since there is on premises sql server being used in the project , a self hosted Integration run time needs to set up to be able access the database. Integration Run time can be 
   

Data Ingestion

![Data Ingestion Set Up](ProjectImages/Ingest.jpg)

Data Ingestion - Source Data
Only the tables under the SalesLT schema in the AdventureWorksLT2022 database will be migrated as part of this project.
Address 
Customer
CustomerAddress
Product
ProductCategory
ProductDescription
ProductModel
ProductModelProductDescription
SalesOrderDetail
SalesOrderHeader

Data Ingestion - ADF - Copy Activity 
![ADF Pipeline](ProjectImages/pipeline.jpg)


Data Ingestion - Sink
