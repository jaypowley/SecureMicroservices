/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

:setvar seedDataPath "..\Seed\"
:setvar seedOnceDataPath "..\Seed\Once\"

--Must come first to satisfy trigger fks
--:r	$(seedDataPath)"dbo.SyncDataTypes.sql"

GO

--Seed Once table(s)
If Not Exists(Select * From dbo.Movie) -- Need some check to see if this is the first release of the db 
Begin
    --Go statements are not permitted inside IF Blocks so they must be removed from all scripts internal to this block.
    --variable scope is limited to the next GO statement so the removal of the GO Statements make @mergeError and @mergeCount in scope of all scripts in this block
    DECLARE @mergeError int, @mergeCount int

    :r  $(seedOnceDataPath)"Movie.sql"
End

--Seed Always table(s)
--:r	$(seedDataPath)"dbo.General.sql"

GO