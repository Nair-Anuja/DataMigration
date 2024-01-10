USE AdventureWorks
GO

CREATE  OR ALTER PROCEDURE sp_CreateView @SchemaName VARCHAR(20) ='SalesLT' ,@ViewName VARCHAR(100) 
AS
BEGIN

SET NOCOUNT ON 

DECLARE @sqlstatement nvarchar(MAX)

SET @sqlstatement= '
CREATE OR ALTER VIEW ' +  @SchemaName +'.' + @ViewName + '
AS
SELECT *
FROM
    OPENROWSET(
        BULK ''gold/SalesLT/' + @ViewName +'/'',
        DATA_SOURCE = ''sqlmigration'',
        FORMAT = ''DELTA''
    ) AS [result]
    '

EXEC(@sqlstatement)

END