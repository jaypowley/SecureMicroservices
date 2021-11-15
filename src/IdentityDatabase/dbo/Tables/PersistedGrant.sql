CREATE TABLE [dbo].[PersistedGrant] (
    [Key]          NVARCHAR (200) NOT NULL,
    [Type]         NVARCHAR (50)  NOT NULL,
    [SubjectId]    NVARCHAR (200) NULL,
    [SessionId]    NVARCHAR (100) NULL,
    [ClientId]     NVARCHAR (200) NOT NULL,
    [Description]  NVARCHAR (200) NULL,
    [CreationTime] DATETIME2 (7)  NOT NULL,
    [Expiration]   DATETIME2 (7)  NULL,
    [ConsumedTime] DATETIME2 (7)  NULL,
    [Data]         NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_PersistedGrant] PRIMARY KEY CLUSTERED ([Key] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_PersistedGrant_Expiration]
    ON [dbo].[PersistedGrant]([Expiration] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_PersistedGrant_SubjectId_ClientId_Type]
    ON [dbo].[PersistedGrant]([SubjectId] ASC, [ClientId] ASC, [Type] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_PersistedGrant_SubjectId_SessionId_Type]
    ON [dbo].[PersistedGrant]([SubjectId] ASC, [SessionId] ASC, [Type] ASC);

