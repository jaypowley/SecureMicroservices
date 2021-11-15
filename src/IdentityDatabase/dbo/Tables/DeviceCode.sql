CREATE TABLE [dbo].[DeviceCode] (
    [UserCode]     NVARCHAR (200) NOT NULL,
    [DeviceCode]   NVARCHAR (200) NOT NULL,
    [SubjectId]    NVARCHAR (200) NULL,
    [SessionId]    NVARCHAR (100) NULL,
    [ClientId]     NVARCHAR (200) NOT NULL,
    [Description]  NVARCHAR (200) NULL,
    [CreationTime] DATETIME2 (7)  NOT NULL,
    [Expiration]   DATETIME2 (7)  NOT NULL,
    [Data]         NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_DeviceCode] PRIMARY KEY CLUSTERED ([UserCode] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_DeviceCode_DeviceCode]
    ON [dbo].[DeviceCode]([DeviceCode] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_DeviceCode_Expiration]
    ON [dbo].[DeviceCode]([Expiration] ASC);

