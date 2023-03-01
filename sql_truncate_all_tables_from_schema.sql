/* Define the name of the schema */
DECLARE @schemaName nvarchar(100) = 'YourSchemaName' 

/* Get a list with all truncate statements */
SELECT 'TRUNCATE TABLE ' + '[' + s.name + '].[' + t.name + ']'      
FROM sys.TABLES t
INNER JOIN sys.schemas s ON t.schema_id=s.schema_id
WHERE s.name = @schemaName
