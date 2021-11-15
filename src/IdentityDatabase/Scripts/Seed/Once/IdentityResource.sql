﻿--MERGE generated by 'sp_generate_merge' stored procedure
--Originally by Vyas (http://vyaskn.tripod.com/code): sp_generate_inserts (build 22)
--Adapted for SQL Server 2008+ by Daniel Nolan (https://twitter.com/dnlnln)

SET NOCOUNT ON

SET IDENTITY_INSERT [IdentityResource] ON

MERGE INTO [IdentityResource] AS [Target]
USING (VALUES
  (1,1,N'profile',N'User profile',N'Your user profile information (first name, last name, etc.)',0,1,1,'2021-11-14T19:50:28.0102629',NULL,0)
 ,(2,1,N'openid',N'Your user identifier',NULL,1,0,1,'2021-11-14T19:50:27.9909734',NULL,0)
 ,(3,1,N'address',N'Your postal address',NULL,0,1,1,'2021-11-14T19:50:28.0136134',NULL,0)
 ,(4,1,N'email',N'Your email address',NULL,0,1,1,'2021-11-14T19:50:28.0165790',NULL,0)
 ,(5,1,N'role',N'Role',NULL,0,0,1,'2021-11-14T19:50:28.0195242',NULL,0)
) AS [Source] ([Id],[Enabled],[Name],[DisplayName],[Description],[Required],[Emphasize],[ShowInDiscoveryDocument],[Created],[Updated],[NonEditable])
ON ([Target].[Id] = [Source].[Id])
WHEN MATCHED AND (
	NULLIF([Source].[Enabled], [Target].[Enabled]) IS NOT NULL OR NULLIF([Target].[Enabled], [Source].[Enabled]) IS NOT NULL OR 
	NULLIF([Source].[Name], [Target].[Name]) IS NOT NULL OR NULLIF([Target].[Name], [Source].[Name]) IS NOT NULL OR 
	NULLIF([Source].[DisplayName], [Target].[DisplayName]) IS NOT NULL OR NULLIF([Target].[DisplayName], [Source].[DisplayName]) IS NOT NULL OR 
	NULLIF([Source].[Description], [Target].[Description]) IS NOT NULL OR NULLIF([Target].[Description], [Source].[Description]) IS NOT NULL OR 
	NULLIF([Source].[Required], [Target].[Required]) IS NOT NULL OR NULLIF([Target].[Required], [Source].[Required]) IS NOT NULL OR 
	NULLIF([Source].[Emphasize], [Target].[Emphasize]) IS NOT NULL OR NULLIF([Target].[Emphasize], [Source].[Emphasize]) IS NOT NULL OR 
	NULLIF([Source].[ShowInDiscoveryDocument], [Target].[ShowInDiscoveryDocument]) IS NOT NULL OR NULLIF([Target].[ShowInDiscoveryDocument], [Source].[ShowInDiscoveryDocument]) IS NOT NULL OR 
	NULLIF([Source].[Created], [Target].[Created]) IS NOT NULL OR NULLIF([Target].[Created], [Source].[Created]) IS NOT NULL OR 
	NULLIF([Source].[Updated], [Target].[Updated]) IS NOT NULL OR NULLIF([Target].[Updated], [Source].[Updated]) IS NOT NULL OR 
	NULLIF([Source].[NonEditable], [Target].[NonEditable]) IS NOT NULL OR NULLIF([Target].[NonEditable], [Source].[NonEditable]) IS NOT NULL) THEN
 UPDATE SET
  [Target].[Enabled] = [Source].[Enabled], 
  [Target].[Name] = [Source].[Name], 
  [Target].[DisplayName] = [Source].[DisplayName], 
  [Target].[Description] = [Source].[Description], 
  [Target].[Required] = [Source].[Required], 
  [Target].[Emphasize] = [Source].[Emphasize], 
  [Target].[ShowInDiscoveryDocument] = [Source].[ShowInDiscoveryDocument], 
  [Target].[Created] = [Source].[Created], 
  [Target].[Updated] = [Source].[Updated], 
  [Target].[NonEditable] = [Source].[NonEditable]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([Id],[Enabled],[Name],[DisplayName],[Description],[Required],[Emphasize],[ShowInDiscoveryDocument],[Created],[Updated],[NonEditable])
 VALUES([Source].[Id],[Source].[Enabled],[Source].[Name],[Source].[DisplayName],[Source].[Description],[Source].[Required],[Source].[Emphasize],[Source].[ShowInDiscoveryDocument],[Source].[Created],[Source].[Updated],[Source].[NonEditable])
WHEN NOT MATCHED BY SOURCE THEN 
 DELETE;


SELECT @mergeError = @@ERROR, @mergeCount = @@ROWCOUNT
IF @mergeError != 0
 BEGIN
 PRINT 'ERROR OCCURRED IN MERGE FOR [IdentityResource]. Rows affected: ' + CAST(@mergeCount AS VARCHAR(100)); -- SQL should always return zero rows affected
 END
ELSE
 BEGIN
 PRINT '[IdentityResource] rows affected by MERGE: ' + CAST(@mergeCount AS VARCHAR(100));
 END




SET IDENTITY_INSERT [IdentityResource] OFF
SET NOCOUNT OFF
