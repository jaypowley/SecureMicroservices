CREATE TABLE [dbo].[ClientIdPRestriction] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Provider] NVARCHAR (200) NOT NULL,
    [ClientId] INT            NOT NULL,
    CONSTRAINT [PK_ClientIdPRestriction] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ClientIdPRestriction_Client_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ClientIdPRestriction_ClientId]
    ON [dbo].[ClientIdPRestriction]([ClientId] ASC);

