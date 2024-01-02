As the source is on premises , Self hosted integration runtime needs to be set up for the execution of the data factory pipelines.  Select the below created IR while creating the linked service to the on premises sql server.

Navigate to the **Manage** tab in Azure Data Factory , click on integration runtimes under Connections and click **New** to create a new integration run time.
![IR](/ProjectImages/IntegrationRuntime.PNG)


\
Follow the below steps to configure the integration runtime.
\
-- Click on Azure Self Hosted
![IR](/ProjectImages/IntegrationRuntime2.PNG)
\
\
-- Click on continue and select **Self-Hosted**
![IR](/ProjectImages/IntegrationRuntime3.PNG)
\

-- Give a name to the integration runtime.
![IR](/ProjectImages/IntegrationRuntime4.PNG)
\

-- Select the second option **Manual SetUp** to download and install the integration runtime.

![IR](/ProjectImages/IntegrationRuntime5.PNG)



