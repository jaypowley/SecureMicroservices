CREATE TABLE [dbo].[ClientClaim] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Type]     NVARCHAR (250) NOT NULL,
    [Value]    NVARCHAR (250) NOT NULL,
    [ClientId] INT            NOT NULL,
    CONSTRAINT [PK_ClientClaim] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ClientClaim_Client_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ClientClaim_ClientId]
    ON [dbo].[ClientClaim]([ClientId] ASC);

