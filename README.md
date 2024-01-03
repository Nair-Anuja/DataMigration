# DataMigration
This project is about migration sql server database to Azure SQL database.
\
Project is in progress.

## Solution Architecture

## Environment Set Up
1. Download the [AdventureWorksLT](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms) back up file. The link has instructions to restore the file.
2. Set up user /password to access the database.
3. On the Azure portal , set up the subscription. Within the subscription set up Data Factory , Azure Data Lake Storage, SQL Database, [key vault](SetUp-AzureKeyVault).
4. Since there is on premises sql server being used in the project , a self hosted Integration run time needs to [set up](SetUp-IntegrationRunTime) to be able access the database. 
   

## Data Ingestion

![Data Ingestion Set Up](ProjectImages/Ingest.jpg)

#### Data Ingestion - Source Data
Only the below tables under the SalesLT schema in the AdventureWorksLT2022 database will be migrated as part of this project.\
Address \
Customer \
CustomerAddress \
Product \
ProductCategory \
ProductDescription \
ProductModel \
ProductModelProductDescription \
SalesOrderDetail \
SalesOrderHeader 

#### Data Ingestion - ADF - Copy Activity 
![ADF Pipeline](ProjectImages/pipeline.jpg)

\
The ingest pipeline details have been described in detail [here](ADF-IngestPipeline).


#### Data Ingestion - Sink
The table data will be stored in parquet file format in the data lake.\
Naming Convention  : **sqlserver-migration / bronze/SchemaName /TableName/ TableName.parquet**

![ADLSFileStorage](ProjectImages/adlsfilestructure.png)

## Data Transformation using Databricks
Azure Databricks will be used to transform the data in azure datalake.
Follow the ![link](<SetUp-Azure Databricks>) to set up the azure databricks workspace.

## Data Loading using Azure Synapse Analytics
## Data Reporting

