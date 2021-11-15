CREATE TABLE [dbo].[ClientGrantType] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [GrantType] NVARCHAR (250) NOT NULL,
    [ClientId]  INT            NOT NULL,
    CONSTRAINT [PK_ClientGrantType] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ClientGrantType_Client_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ClientGrantType_ClientId]
    ON [dbo].[ClientGrantType]([ClientId] ASC);

